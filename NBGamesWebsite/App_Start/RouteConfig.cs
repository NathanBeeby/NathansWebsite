using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace HorseTherapySite
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("", "Default", "~/Default.aspx");
            routes.MapPageRoute("", "AboutUs", "~/About.aspx");
            routes.MapPageRoute("", "ContactUs", "~/Contact.aspx");
            routes.MapPageRoute("", "OurCookiePolicy", "~/CookiePolicy.aspx");
            routes.MapPageRoute("", "OurPrivacyPolicy", "~/PrivacyPolicy.aspx");
            routes.MapPageRoute("", "TermsOfService", "~/TermsAndConditions.aspx");
            routes.MapPageRoute("", "Game1", "~/TempGame1.aspx");
            routes.MapPageRoute("", "Game2", "~/TempGame2.aspx");
            routes.MapPageRoute("", "Game3", "~/TempGame3.aspx");
            routes.MapPageRoute("", "Game4", "~/TempGame4.aspx");
            routes.MapPageRoute("", "Game5", "~/TempGame5.aspx");

            routes.MapPageRoute("", "AddYourNumber", "~/Account/AddPhoneNumber.aspx");
            routes.MapPageRoute("", "Confirm", "~/Account/Confirm.aspx");
            routes.MapPageRoute("", "Forgot", "~/Account/Forgot.aspx");
            routes.MapPageRoute("", "Lockout", "~/Account/Lockout.aspx");
            routes.MapPageRoute("", "Login", "~/Account/Login.aspx");
            routes.MapPageRoute("", "Manage", "~/Account/Manage.aspx");
            routes.MapPageRoute("", "ManageYourLogin", "~/Account/ManageLogins.aspx");
            routes.MapPageRoute("", "ManageYourPassword", "~/Account/ManagePassword.aspx");
            routes.MapPageRoute("", "Register", "~/Account/Register.aspx");
            routes.MapPageRoute("", "RegisterExternalLogin", "~/Account/RegisterExternalLogin.aspx");
            routes.MapPageRoute("", "ResetPassword", "~/Account/ResetPassword.aspx");
            routes.MapPageRoute("", "ResetPasswordConfirmation", "~/Account/ResetPasswordConfirmation.aspx");
            routes.MapPageRoute("", "TwoFactorAuthentication", "~/Account/TwoFactorAuthenticationSignIn.aspx");
            routes.MapPageRoute("", "VerifyYourNumber", "~/Account/VerifyPhoneNumber.aspx");

        }

    }
}
