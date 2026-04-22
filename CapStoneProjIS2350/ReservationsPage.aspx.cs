using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapStoneProjIS2350
{
    public partial class ReservationsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Name.Text = " ";
            guests.Text = " ";
            Phone.Text = " ";
            txtEmail.Text = " ";
        }
    }
}