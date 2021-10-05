using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothDonationApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginSubmit_Click(object sender, EventArgs e)
        {
            string name = Name.Text;
            string password = Password.Text;
            ClothDonationDbEntities db = new ClothDonationDbEntities();
            User user = db.Users.Where(u => u.Name == name).FirstOrDefault<User>();
            if (user != null && password == user.Password)
            {
                Response.Redirect("~/Donation.aspx");
            }
            else
            {
                Label1.Text = "Oops!!! user Name or Password is Incorrect";
            }
        }
    }
}