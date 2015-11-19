using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ReverseWebsite.Startup))]
namespace ReverseWebsite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
