using System.Web;
using System.Web.Mvc;

namespace Salas_AppMvcProyectoFinal
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
