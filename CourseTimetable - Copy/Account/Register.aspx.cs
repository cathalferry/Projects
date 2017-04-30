using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using CourseTimetable.Models;

namespace CourseTimetable.Account
{

    public partial class Register : Page
    {
        
        Course_TimetableEntities COURSE = new Course_TimetableEntities();
        User_Table adduser = new User_Table();
        User_Table test = new User_Table();
        int admin_checkbox = 0;
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            bool password_match= false;
            var newusername = tbxNewUser.Text;
            var password1 = Password.Text;
            var password = Password.Text;
            if(password == password1)
            {
                password_match = true;
                
            }
            else
            {
                ErrorMessage.Text = "The User ID already exists";
            }
                if (password_match)
                {
                    adduser.UserID = tbxNewUser.Text.Trim();
                    adduser.Password = password1.Trim();
                    if (admin_checkbox == 1)
                    {
                        adduser.UserType = 1;
                    }
                    else
                        adduser.UserType = 2;
                    COURSE.Configuration.AutoDetectChangesEnabled = false;
                    COURSE.Configuration.ValidateOnSaveEnabled = false;
                    COURSE.Entry(adduser).State = System.Data.Entity.EntityState.Added;


                }

            foreach (var _user in COURSE.User_Table)
            {
                if(adduser.UserID==tbxNewUser.Text.Trim())
                {
                    ErrorMessage.Text = "The User ID " +tbxNewUser.Text+ " already exists";
                }
                else {
                    COURSE.SaveChanges();
                    COURSE.Configuration.AutoDetectChangesEnabled = true;
                    COURSE.Configuration.ValidateOnSaveEnabled = true;
                }
            }
           
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            //var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            //IdentityResult result = manager.Create(user, Password.Text);
            //if (result.Succeeded)
            //{
            //    // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
            //    //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //    //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

            //    signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
            //    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //}
            //else 
            //{
            //    ErrorMessage.Text = result.Errors.FirstOrDefault();
            //}
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            admin_checkbox = 1;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}