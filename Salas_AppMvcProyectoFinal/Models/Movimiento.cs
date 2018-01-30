using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace Salas_AppMvc06.Models
{
    public class Movimiento
    {
        public string Codigo { get; set; }
        [Required]
        public string CtaOrigen { get; set; }
        public string CtaDestino { get; set; }
        public string CodTipoMovimiento { get; set; }
        public IEnumerable<SelectListItem> TipoMovimientos { get; set; }
        public string Monto { get; set; }
        public string Fecha { get; set; }
    }
}