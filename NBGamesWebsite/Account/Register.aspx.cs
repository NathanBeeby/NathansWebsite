using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using HorseTherapySite.Models;
using System.Data.SqlClient;
using System.Data;
using EncryptString;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Linq;
namespace HorseTherapySite.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string Username = tbUsername.Text;
            string Password = StringCipher.Encrypt(tbPassword.Text);
            string ConfirmPassword = tbConfirmPassword.Text;
            string Email = tbEmail.Text;
            DateTime DateCreated = DateTime.Now;

            if (!String.IsNullOrWhiteSpace(Username) && !String.IsNullOrWhiteSpace(Password) && !String.IsNullOrWhiteSpace(ConfirmPassword) && DateCreated != null)
            {
                if (tbPassword.Text == tbConfirmPassword.Text)
                {
                    try
                    {
                        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["NBeebyGamesConnection"].ConnectionString);
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("dbo.POST_TO_USERS", conn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Username", SqlDbType.VarChar).Value = Username;
                        cmd.Parameters.AddWithValue("@Password", SqlDbType.VarChar).Value = Password;
                        cmd.Parameters.AddWithValue("@Email", SqlDbType.VarChar).Value = Email;
                        cmd.Parameters.AddWithValue("@DateCreated", SqlDbType.DateTime).Value = DateCreated;
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    catch (Exception ex)
                    {
                        string DBErrorMessage = "Could not execute stored procedure " + ex.Message;
                        lblErrorMessage.Text = DBErrorMessage;
                    }
                }
            }
        }
    }
}