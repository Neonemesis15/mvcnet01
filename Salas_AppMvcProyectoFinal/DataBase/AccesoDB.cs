using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Salas_AppMvc06.DataBase
{
    public class AccesoDB
    {
        public AccesoDB()
	    {
		    //
		    // TODO: Agregar aquí la lógica del constructor
		    //
	    }

        public static SqlConnection getConnection()
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["bancoNet"].ConnectionString);
            return cn;

        }
    }
}