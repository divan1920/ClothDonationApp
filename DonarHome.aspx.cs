using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Validation;

namespace ClothDonationApp
{
    public partial class DonarHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["UserId"] != null && Session["Username"] != null))
            {
                Session["ErrorMsg"] = "Please Log in";
                Response.Redirect("~/Login.aspx");
            }
            else if(!Session["Role"].Equals(0))
            {
                Session.Abandon();
                Session["ErrorMsg"] = "You are not a Donar";
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}