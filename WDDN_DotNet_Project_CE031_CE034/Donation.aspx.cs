using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothDonationApp
{
    public partial class Donation1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["UserId"] != null && Session["Username"] != null))
            {
                Session["ErrorMsg"] = "Please Log in";
                Response.Redirect("~/Login.aspx");
            }
            
        }

        protected void Donation_Submit_Click(object sender, EventArgs e)
        {
            ClothDonationDbEntities db = new ClothDonationDbEntities();
            string Donarname = this.Name.Text;
            string Contentsize = this.ContentList.SelectedItem.Text;
            string city = this.CityList.SelectedItem.Text;
            try 
            {
                Donation donation = new Donation
                {

                    UserId = Convert.ToInt32(Session["UserId"]),
                    Mobile = Convert.ToInt64(this.MobileNo.Text),
                    City = city,
                    ContentSize = Contentsize,
                    Status = "Pending",
                    DonarName = Donarname,
                };
                db.Donations.Add(donation);
                db.SaveChanges();
                
            }
            catch (DbEntityValidationException e1)
            {
                Label2.Text = e1.Message;
               foreach (var eve in e1.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \" {0}\" in state \" {1}\" has the following validation errors :", eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ev in eve.ValidationErrors)
                    {
                        Label2.Text = "-Property:" + ev.PropertyName + ", Error: " + ev.ErrorMessage;
                    }
                }
            }
            Response.Redirect("~/UpdateDonation.aspx");
        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}