using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CourseTimetable.Startup))]
namespace CourseTimetable
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
