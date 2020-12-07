using Microsoft.Owin;
using Microsoft.Owin.Security.Google;
using Owin;

[assembly: OwinStartupAttribute(typeof(QlityG.Startup))]
namespace QlityG
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
            app.UseGoogleAuthentication(new GoogleOAuth2AuthenticationOptions()
            {
                ClientId = "1054218211676-etkbdtbaicnj05nfd897r8rja5iuj1no.apps.googleusercontent.com",
                ClientSecret = "AjaxiEs3C1OnPWR1HDr-ZyA5"
            });
        }
    }
}
