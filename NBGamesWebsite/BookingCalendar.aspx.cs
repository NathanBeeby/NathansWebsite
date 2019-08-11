using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace HorseTherapySite
{
    public partial class BookingCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string DateNow = DateTime.Now.ToString("dd/MM/yyyy");
            DateLabel.Text = DateNow;
            tbdate.Text = DateNow;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if(!String.IsNullOrWhiteSpace(tbSignature.Text) && !String.IsNullOrWhiteSpace(tbdate.Text) && !String.IsNullOrWhiteSpace(tbFirstName.Text) && !String.IsNullOrWhiteSpace(tbLastName.Text) && !String.IsNullOrWhiteSpace(tbEmail.Text)) { 
            pnlConsent.Visible = false;
                string Signature = tbSignature.Text;
                string dateOfSign = tbdate.Text;
                string FirstName = tbFirstName.Text;
                string LastName = tbLastName.Text;
                string FullName = FirstName + " " + LastName;
                string Email = tbEmail.Text;
                if(!String.IsNullOrWhiteSpace(Signature) && !String.IsNullOrWhiteSpace(dateOfSign) && !String.IsNullOrWhiteSpace(FirstName) && !String.IsNullOrWhiteSpace(LastName) && !String.IsNullOrWhiteSpace(FullName) && !String.IsNullOrWhiteSpace(Email)) { 
                //Put the data in an SQL database
                try
                {
                    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HorseTimeConnection"].ConnectionString);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("dbo.POST_TO_CONSENT_TABLE", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Signature", SqlDbType.VarChar).Value = Signature;
                    cmd.Parameters.AddWithValue("@Date", SqlDbType.VarChar).Value = dateOfSign;
                    cmd.Parameters.AddWithValue("@FirstName", SqlDbType.VarChar).Value = FirstName;
                    cmd.Parameters.AddWithValue("@LastName", SqlDbType.VarChar).Value = LastName;
                    cmd.Parameters.AddWithValue("@FullName", SqlDbType.VarChar).Value = FullName;
                    cmd.Parameters.AddWithValue("@Email", SqlDbType.VarChar).Value = Email;

                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    string DBErrorMessage = "Could not execute stored procedure " + ex.Message;
                }
                }

                //Put the data in an SQL database
                SignatureErrorLabel.Text = "";
            }else
            {
                string ErrorMessage = "You need to sign and date the consent form to continue"; // alert an error message out - put the error messages in a database
                SignatureErrorLabel.Text = ErrorMessage.ToString();
            }
        }

        protected void btnBookingSlot_Click(object sender, EventArgs e)
        {
            string BookingDate = tbDateCalendar.Text;
            string BookingTime = ddlBookingTime.SelectedItem.ToString();
            string FirstName = tbBookingFirstName.Text;
            string LastName = tbBookingLastName.Text;
            string FullName = FirstName + " " + LastName;
            string Email = tbBookingEmail.Text;
            string sessionType = ddlSessionType.SelectedItem.ToString();
            if (!String.IsNullOrWhiteSpace(BookingDate) && !String.IsNullOrWhiteSpace(BookingTime) && !String.IsNullOrWhiteSpace(FirstName) && !String.IsNullOrWhiteSpace(LastName) && !String.IsNullOrWhiteSpace(Email) && !String.IsNullOrWhiteSpace(sessionType)){
                //Put the data in an SQL database
                try {
                    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HorseTimeConnection"].ConnectionString);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("dbo.POST_TO_BOOKING_TABLE", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BookingDate", SqlDbType.VarChar).Value = BookingDate;
                    cmd.Parameters.AddWithValue("@BookingTime", SqlDbType.VarChar).Value = BookingTime;
                    cmd.Parameters.AddWithValue("@FirstName", SqlDbType.VarChar).Value = FirstName;
                    cmd.Parameters.AddWithValue("@LastName", SqlDbType.VarChar).Value = LastName;
                    cmd.Parameters.AddWithValue("@FullName", SqlDbType.VarChar).Value = FullName;
                    cmd.Parameters.AddWithValue("@Email", SqlDbType.VarChar).Value = Email;
                    cmd.Parameters.AddWithValue("@SessionType", SqlDbType.VarChar).Value = sessionType;
                    
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch(Exception ex)
                {
                    string DBErrorMessage = "Could not execute stored procedure " + ex.Message; 
                }
                try
                {
                    string subjectLine = "Booking for " + FullName + ". On " + BookingDate + " At " + BookingTime;
                    string bodyLine = "<h1>Horse Time Therapy<h1> <br/>" + "<p>Booking for " + FullName + "</p><br/> <p>Date: " + BookingDate + "</p><br/> <p>Booking Time: " + BookingTime + "</p><br/> <p>Users Email: " + Email + "</p><br/> <p>Session Type: " + sessionType + "</p>";

                    //Email the date and time to theresas email
                    using (MailMessage mm = new MailMessage())
                    {
                        mm.Subject = subjectLine;
                        mm.Body = bodyLine;
                        mm.IsBodyHtml = true;
                        mm.BodyEncoding = Encoding.GetEncoding("UTF-8");
                        mm.From = new MailAddress(Email.ToString());
                        mm.To.Add(new MailAddress("nathan.beeby@hotmail.co.uk"));

                        using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587)) { 
                        smtp.Credentials = new System.Net.NetworkCredential("nathan.a.beeby@gmail.com", "uyfvattqkspbjgtx");
                        smtp.EnableSsl = true;
                        smtp.Send(mm);
                        }
                    }
            }catch(Exception ex)
                {
                    string MailErrorMessage = "Could not send email " + ex.Message;
                    lblBookingError.Text = MailErrorMessage.ToString();
                }
            }
            else
            {
                string ErrorMessage = "You need to fill out all fields to continue";
                lblBookingError.Text = ErrorMessage.ToString();
            }
        }
    }
}