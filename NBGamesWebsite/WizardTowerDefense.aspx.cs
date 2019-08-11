using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HorseTherapySite
{
    public partial class AngerManagementWorkshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBookingSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("BookingCalendar.aspx");
            }
            catch (Exception ex)
            {
                string ErrorLabel = "Could not redirect to the booking calendar. " + ex.Message;
            }
        }
    }

    
}