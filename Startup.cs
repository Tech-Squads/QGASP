using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(QlityG.Startup))]
namespace QlityG
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
