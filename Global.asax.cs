using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

namespace WebFormStepWiseLearning
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application["TotalApplication"] = 0;
            Application["TotalUserSession"] = 0;


            Application["TotalApplication"] = (int)Application["TotalApplication"] + 1;

            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void Session_start(object sender, EventArgs e)
        {
            Application["TotalUserSession"] = (int)Application["TotalUserSession"] + 1;

        }
        void Session_end(object sender, EventArgs e)
        {
            Application["TotalUserSession"] = (int)Application["TotalUserSession"] - 1;

        }

    }
}