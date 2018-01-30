using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Salas_AppMvc06.Models
{
    public class CuentaCorriente
    {
        public string NroCuentaCorriente { get; set; }
        public string NroCliente { get; set; }
        public string Saldo { get; set; }
        public string Fecha { get; set; }
    }
}