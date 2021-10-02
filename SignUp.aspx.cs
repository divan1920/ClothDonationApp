using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClothDonationApp
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpSubmit_Click(object sender, EventArgs e)
        {
            ClothDonationDbEntities db = new ClothDonationDbEntities();
            User user = new User
            {
                Name = Name.Text,
                Email = Email.Text,
                Password = Password.Text
            };
            db.Users.Add(user);
            try { db.SaveChanges(); }
            catch(DbEntityValidationException e1)
            {
                //Label1.Text = e1.Message;
                foreach(var eve in e1.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \" {0}\" in state \" {1}\" has the following validation errors :",eve.Entry.Entity.GetType().Name,eve.Entry.State);
                    foreach(var ev in eve.ValidationErrors)
                    {
                        Label1.Text = "-Property:"+ ev.PropertyName+", Error: "+ ev.ErrorMessage;
                    }
                }
            }

            //Response.Redirect("Home.aspx");
        }
    }
}