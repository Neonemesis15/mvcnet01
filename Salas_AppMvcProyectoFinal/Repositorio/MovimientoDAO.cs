using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Salas_AppMvc06.Models;
using Salas_AppMvc06.Service;
using Salas_AppMvc06.DataBase;
using System.Data.SqlClient;
using System.Data;

namespace Salas_AppMvc06.Repositorio
{
    public class MovimientoDAO : ICrud<Movimiento>
    {
        public MovimientoDAO() {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }

        //Metodos para la persistencia
        public int create(Movimiento o)
        {
            int ok;
            using (var cn = AccesoDB.getConnection())
            {
                SqlCommand cmd = new SqlCommand("usp_MovimientoNuevo", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CtaOrigen", o.CtaOrigen);
                cmd.Parameters.AddWithValue("@CtaDestino", o.CtaDestino);
                cmd.Parameters.AddWithValue("@CodTipoMovimiento", o.CodTipoMovimiento);
                cmd.Parameters.AddWithValue("@Monto", o.Monto);
                cmd.Parameters.Add("@Codigo", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                try
                {
                    cn.Open();
                    ok = cmd.ExecuteNonQuery() == 1 ? 1 : 0;
                    o.Codigo = (string)cmd.Parameters["@Codigo"].Value;
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    cn.Close();
                }
                return ok;
            }
        }

        public int update(Movimiento o)
        {
            int ok;
            using (var cn = AccesoDB.getConnection())
            {
                SqlCommand cmd = new SqlCommand("usp_Movimiento_Actualizar", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CtaOrigen", o.CtaOrigen);
                cmd.Parameters.AddWithValue("@CtaDestino", o.CtaDestino);
                cmd.Parameters.AddWithValue("@CodTipoMovimiento", o.CodTipoMovimiento);
                cmd.Parameters.AddWithValue("@Monto", o.Monto);
                cmd.Parameters.AddWithValue("@Codigo", o.Codigo);
                try
                {
                    cn.Open();
                    ok = cmd.ExecuteNonQuery() == 1 ? 1 : 0;
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    cn.Close();
                }
                return ok;
            }  
        }

        public int delete(Movimiento o)
        {
            int ok;
            using (var cn = AccesoDB.getConnection())
            {
                SqlCommand cmd = new SqlCommand("usp_Movimiento_Eliminar", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Codigo", o.Codigo);
                try
                {
                    cn.Open();
                    ok = cmd.ExecuteNonQuery() == 1 ? 1 : 0;
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    cn.Close();
                }
                return ok;
            }
        }

        public List<Movimiento> readAll()
        {
            List<Movimiento> lista = new List<Movimiento>();
            using (var cn = AccesoDB.getConnection())
            {
                SqlDataAdapter da = new SqlDataAdapter("usp_Movimiento_Listar", cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                foreach (DataRow item in dt.Rows)
                {
                    Movimiento c = new Movimiento()
                    {
                        Codigo = item[0].ToString(),
                        CtaOrigen = item[1].ToString(),
                        CtaDestino = item[2].ToString(),
                        CodTipoMovimiento = item[3].ToString(),
                        Monto = item[4].ToString(),
                        Fecha = item[5].ToString()
                    };
                    lista.Add(c);
                }
                return lista;
            }
        }
        
        public Movimiento query(object id)
        {
            Movimiento c = null;
            using (var cn = AccesoDB.getConnection())
            {
                string x = (string)id;
                SqlDataAdapter da = new SqlDataAdapter("usp_Movimiento_Consultar", cn);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@Codigo", x);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        c = new Movimiento()
                        {
                            Codigo = item[0].ToString(),
                            CtaOrigen = item[1].ToString(),
                            CtaDestino = item[2].ToString(),
                            CodTipoMovimiento = item[3].ToString(),
                            Monto = item[4].ToString(),
                            Fecha = item[5].ToString()
                        };
                    }
                }
                return c;
            }
        }
        
        //Adicionales
        public bool CtaCorriente_Existe(String CtaCorriente) {
            bool ok;
            using (var cn = AccesoDB.getConnection())
            {
                SqlCommand cmd = new SqlCommand("usp_CtaCorriente_Existe", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CtaCorriente", CtaCorriente ?? "");
                cmd.Parameters.Add("@Result", SqlDbType.Bit).Direction = ParameterDirection.Output;
                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    ok = (bool)cmd.Parameters["@Result"].Value;
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    cn.Close();
                }
                return ok;
            }
        }

        private DataTable TipoMovimiento_ListarDb()
        {
            using (var cn = AccesoDB.getConnection())
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT distinct [CodTipoMovimiento] ,[Descripcion] FROM [TipoMovimiento]", cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        public List<TipoMovimiento> TipoMovimiento_Listar()
        {
            List<TipoMovimiento> lista = new List<TipoMovimiento>();
            DataTable dt = new DataTable();
            dt = TipoMovimiento_ListarDb();
            foreach (DataRow item in dt.Rows)
            {
                TipoMovimiento c = new TipoMovimiento()
                {
                    CodTipoMovimiento = item[0].ToString(),
                    Descripcion = item[1].ToString()
                };
                lista.Add(c);
            }
            return lista;
        }

    }
}