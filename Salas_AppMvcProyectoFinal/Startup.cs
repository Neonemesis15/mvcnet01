using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Salas_AppMvcProyectoFinal.Startup))]
namespace Salas_AppMvcProyectoFinal
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
