using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClothDonationApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* Label1.Text = Session["ErrorMsg"].ToString();*/
        }

        protected void LoginSubmit_Click(object sender, EventArgs e)
        { 
            string name = Name.Text;
            string password = Password.Text;
            ClothDonationDbEntities db = new ClothDonationDbEntities();
            User user = db.Users.Where(u => u.Name == name).FirstOrDefault<User>();
            if (user != null && password.Equals(user.Password))
            {
                Session["UserId"] = user.UserId;
                Session["Username"] = user.Name;
                Session["Role"] = user.Role;
                Session["City"] = user.City;
                if (user.Role.Equals(0))
                {
                    Response.Redirect("~/DonarHome.aspx");
                }
                else if(user.Role.Equals(1))
                {
                    Response.Redirect("~/VolunteerHome.aspx");
                }
                else
                {
                    Response.Redirect("~/AdminHome.aspx");
                }
            }
            else
            {
                Label1.Text = "Oops!!! user Name or Password is Incorrect";
            }
        }
    }
}