using Salas_AppMvc06.Models;
using Salas_AppMvc06.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Salas_AppMvcProyectoFinal.Controllers
{
    public class MovimientosController : Controller
    {
        //Instanciar al MovimientoDAO
        MovimientoDAO dao = new MovimientoDAO();
        // GET: Movimientos
        public ActionResult Index()
        {
            return View(dao.readAll().ToList());
        }

        // GET: Movimientos/Details/5
        public ActionResult Details(int id)
        {
            return View(dao.query(id.ToString()));
        }

        // GET: Movimientos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Movimientos/Create
        [HttpPost]
        public ActionResult Create(Movimiento mov)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    dao.create(mov);
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //Obtener Todos los Tipos de movimientos
        private IEnumerable<SelectListItem> GetTipoDeMovimientos()
        {
            var dbTipoMovimientos = dao.TipoMovimiento_Listar();
            var TipoMovimientos = dbTipoMovimientos
                                  .Select(x => new SelectListItem { Value = x.CodTipoMovimiento, Text = x.Descripcion });

            return new SelectList(TipoMovimientos, "Value", "Text");
        }


        // GET: Movimientos/Edit/5
        public ActionResult Edit(int id)
        {
            Movimiento obj = dao.query(id.ToString());
            //Agrego Todos los tipos de movimientos
            obj.TipoMovimientos = GetTipoDeMovimientos();

            var model = obj;
            return View(model);
        }

        // POST: Movimientos/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Movimiento mov)
        {
            try
            {
                mov.Codigo = id.ToString();

                if (ModelState.IsValid)
                {

                    bool CtaOrigenExists = dao.CtaCorriente_Existe(mov.CtaOrigen);
                    bool CtaDestinoExists = dao.CtaCorriente_Existe(mov.CtaDestino);

                    //Verificar si la Cta.Origen existe
                    if (!CtaOrigenExists)
                    {
                        ModelState.AddModelError(string.Empty, "La Cta. Origen no existe");
                        return View();
                    }
                    //Verificar si la Cta.Destino existe
                    else if (!CtaDestinoExists)
                    {
                        ModelState.AddModelError(string.Empty, "La Cta. Destino no existe");
                        return View();
                    }
                    //Si cumple todas las validaciones
                    else
                    {
                        dao.update(mov);
                    }
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Movimientos/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Movimientos/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, Movimiento mov)
        {
            try
            {
                mov.Codigo = id.ToString();

                if (ModelState.IsValid)
                {
                    dao.delete(mov);
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
