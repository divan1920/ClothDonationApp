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
            
            try {
                User user = new User
                {
                    Name = Name.Text,
                    Email = Email.Text,
                    Password = Password.Text,
                    Address = Address.Text,
                    Role = Convert.ToInt32(RoleList.SelectedItem.Value),
                    City = CityList.SelectedItem.Text,
                };
               db.Users.Add(user);
               db.SaveChanges();
            }
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
            catch(FormatException e2)
            {
                e2 = (FormatException)e2.GetBaseException();
                Label1.Text = "Source:" + e2.Source + "  Stackstrace: "+e2.StackTrace + "\nInner: "+( (e2.InnerException != null)? e2.InnerException.ToString():"");
            }

            Response.Redirect("~/Login.aspx");
        }

        
    }
}