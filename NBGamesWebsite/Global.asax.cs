using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.IO;
using System.Web.Security;
using System.Web.SessionState;

namespace HorseTherapySite
{
    public class Global : HttpApplication
    {
        protected void Application_EndRequest(object sender, EventArgs e)
        {
            string DateOfError = "\nDATE: " + DateTime.Now.ToString() + ": "; // date of the errors arrival

            try
            {
                Exception ex = Server.GetLastError().GetBaseException();
                Console.WriteLine(DateOfError);
                Console.WriteLine("\nMESSAGE: " + ex.Message);
                Console.WriteLine("\nSOURCE: " + ex.Source);
                Console.WriteLine("\nINNEREXCEPTION: " + ex.InnerException);
                Console.WriteLine("\nDATA: " + ex.Data);
                Console.WriteLine("\nTARGETSITE; " + ex.TargetSite);
                Console.WriteLine("\nSTACKTRACE" + ex.StackTrace);
            }
            catch (Exception ex)
            {
                Console.WriteLine(DateOfError);
                Console.WriteLine("\nMESSAGE: " + ex.Message);
                Console.WriteLine("\nSOURCE: " + ex.Source);
                Console.WriteLine("\nINNEREXCEPTION: " + ex.InnerException);
                Console.WriteLine("\nDATA: " + ex.Data);
                Console.WriteLine("\nTARGETSITE; " + ex.TargetSite);
                Console.WriteLine("\nSTACKTRACE" + ex.StackTrace);
            }

        }

        void Application_Start(object sender, EventArgs e)
        {
            string path = Server.MapPath("~ErrorLogs/log.txt"); // finding the route of the log file
            try
            {
                Console.SetOut(File.CreateText(path)); // chane the output stream for the file
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error loading filepath, :" + ex.Message);
            }
            Console.WriteLine("Opening the error logs"); // writing to log

            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}