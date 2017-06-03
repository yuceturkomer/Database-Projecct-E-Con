using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Gtu_E_Con.Startup))]
namespace Gtu_E_Con
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
