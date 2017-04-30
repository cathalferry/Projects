using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(reportwebsite.Startup))]
namespace reportwebsite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
