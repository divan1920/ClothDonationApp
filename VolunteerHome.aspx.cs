using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothDonationApp
{
    public partial class VolunteerHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] != null && Session["UserId"] != null)
            {
                if(!Session["Role"].Equals(1))
                {
                    Session.Abandon();  //Logging out the session for user
                    Session["ErrorMsg"] = "You are not a Volunteer";
                    Response.Redirect("~/Login.aspx");
                }
            }
            else
            {
                Session["ErrorMsg"] = "Please Log in";
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}