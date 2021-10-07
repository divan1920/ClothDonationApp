using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothDonationApp
{
    public partial class UpdateDonation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || Session["Username"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

        }

        protected void UpdateDonation_Submit_Click(object sender, EventArgs e)
        {
            ClothDonationDbEntities db = new ClothDonationDbEntities();

            Donation donation = new Donation
            {

                UserId = (int)Session["UserId"],
                DonarName = DonarName.Text,
                Mobile = Convert.ToInt32(MobileNo.Text),
                City = CityList.SelectedItem.Text,
                ContentSize = ContentList.SelectedItem.Text,
                Status = "Pending",
            };

            db.Donations.Add(donation);
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

        }
    }
}