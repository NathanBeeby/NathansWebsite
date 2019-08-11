using EncryptString;
using Microsoft.AspNet.Identity;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace HorseTherapySite.Account
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["NBeebyGamesConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string Username = Login1.UserName;
            string Password = Login1.Password;

            if (!String.IsNullOrWhiteSpace(Username) && !String.IsNullOrWhiteSpace(Password))
            {
                try
                {
                    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HorseTimeConnection"].ConnectionString);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("dbo.VALIDATE_USERS", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", SqlDbType.VarChar).Value = Username;
                    string password = Convert.ToString(cmd.ExecuteScalar());
                    string decryptPass = StringCipher.Decrypt(password);
                    if (decryptPass == Password)
                    {
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        Response.Redirect("~/Portal/AccountPage.aspx");
                    }
                    else
                    {
                        //lbErrorLabel.Text = "Your Email or Password was incorrect.";
                    }
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    string DBErrorMessage = "Could not execute stored procedure " + ex.Message;
                }
            }
        }




        protected void ValidateUser(object sender, EventArgs e)
        {
            string Username = Login1.UserName;
            string Password = Login1.Password;

            if (!String.IsNullOrWhiteSpace(Username) && !String.IsNullOrWhiteSpace(Password))
            {
                try
                {
                    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["NBeebyGamesConnection"].ConnectionString);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("dbo.VALIDATE_USERS", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", SqlDbType.VarChar).Value = Username;
                    string password = Convert.ToString(cmd.ExecuteScalar());
                    string decryptPass = StringCipher.Decrypt(password);
                    if (decryptPass == Password)
                    {
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        Response.Redirect("~/Portal/AccountPage.aspx");
                    }else
                    {

                    }
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    string DBErrorMessage = "Could not execute stored procedure " + ex.Message;
                }
            }
        }
    }
}