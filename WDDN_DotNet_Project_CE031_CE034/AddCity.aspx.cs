using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothDonationApp
{
    public partial class AddCity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void AddCityButton_Click(object sender, EventArgs e)
        {
            ClothDonationDbEntities db = new ClothDonationDbEntities();
            City city = new City
            {
                CityName = NewCity.Text
            };
            db.Cities.Add(city);
            try { db.SaveChanges(); }
            catch (DbEntityValidationException e1)
            {
                //Label1.Text = e1.Message;
                foreach (var eve in e1.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \" {0}\" in state \" {1}\" has the following validation errors :", eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ev in eve.ValidationErrors)
                    {
                        Label1.Text = "-Property:" + ev.PropertyName + ", Error: " + ev.ErrorMessage;
                    }
                }
            }
            Response.Redirect("~/ManageCity.aspx");
        }
    }
}