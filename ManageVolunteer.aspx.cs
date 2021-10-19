using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothDonationApp
{
    public partial class ManageVolunteer : System.Web.UI.Page
    {
        ClothDonationDbEntities db = new ClothDonationDbEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            User[] user = db.Users.Where(u=>u.Role == 1).ToArray();
            if (!(Session["Username"] != null && Session["UserId"] != null))
            {
                Session["ErrorMsg"] = "Please Log in";
                Response.Redirect("~/Login.aspx");
            }
            else if (!Session["Role"].Equals(2))
            {
                Session.Abandon();
                Session["ErrorMsg"] = "you are not an admin.";
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}