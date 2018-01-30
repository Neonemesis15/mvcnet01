using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Salas_AppMvc06.Service;
using Salas_AppMvc06.Models;
using System.Data.SqlClient;
using System.Data;
using Salas_AppMvc06.DataBase;

namespace Salas_AppMvc06.Repositorio
{
    public class ClienteDAO : ICrud<Cliente>
    {
        public int create(Cliente o)
        {
            throw new NotImplementedException();
        }

        public int update(Cliente o)
        {
            throw new NotImplementedException();
        }

        public int delete(Cliente o)
        {
            throw new NotImplementedException();
        }

        public List<Cliente> readAll()
        {
            List<Cliente> lista = new List<Cliente>();
            using (var cn = AccesoDB.getConnection())
            {
                SqlDataAdapter da = new SqlDataAdapter("usp_Cliente_Listar", cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                foreach (DataRow item in dt.Rows)
                {
                    Cliente c = new Cliente()
                    {
                        //Codigo = item[0].ToString(),
                        //Nit = item[1].ToString(),
                        //RazonSocial = item[2].ToString(),
                        //CodCiiu = item[3].ToString(),
                        //CodSector = item[4].ToString(),
                        //Estado = item[5].ToString(),
                        //Fecha = item[6].ToString(),
                        //Direccion = item[7].ToString(),
                        //Ciudad = item[8].ToString(),
                        //Departamento = item[9].ToString(),
                        //RepresentanteLegal = item[10].ToString()
                    };
                    lista.Add(c);
                }
                return lista;
            }
        }

        public Cliente query(object id)
        {
            throw new NotImplementedException();
        }
    }
}