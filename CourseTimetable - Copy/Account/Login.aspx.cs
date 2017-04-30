using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using CourseTimetable.Models;
using System.Linq;

namespace CourseTimetable.Account
{
    public partial class Login : Page
    {
        Course_TimetableEntities COURSE = new Course_TimetableEntities();
        private User_Table user;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
          //  OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }
        protected void LogIn_Click(object sender, EventArgs e)
        {
            bool authenticated = false;
            var username = tbxUserName.Text;
            var password = tbxPassword.Text;

            foreach (var _user in COURSE.User_Table.Where(t=>t.UserID == username && t.Password ==password))
            {
                user = _user;
                authenticated = true;
                break;
            }
            if(authenticated)
            {
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                FailureText.Text = "Invalid Login Attempt. Please check your user details and try again.";
                ErrorMessage.Visible = true;

            }

        }
        protected void LogIn(object sender, EventArgs e)
        {
            bool authenticated = false;
            var username = tbxUserName.Text;
            var password = tbxPassword.Text;

            foreach (var _user in COURSE.User_Table.Where(t => t.UserID == username && t.Password == password))
            {
                user = _user;
                authenticated = true;
                break;
            }
            if (authenticated)
            {
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                FailureText.Text = "Invalid Login Attempt. Please check your user details and try again.";
                ErrorMessage.Visible = true;

            }
            //if (IsValid)
            //{
            //    // Validate the user password
            //    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //    var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

            //    // This doen't count login failures towards account lockout
            //    // To enable password failures to trigger lockout, change to shouldLockout: true
            //    var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

            //    switch (result)
            //    {
            //        case SignInStatus.Success:
            //            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //            break;
            //        case SignInStatus.LockedOut:
            //            Response.Redirect("/Account/Lockout");
            //            break;
            //        case SignInStatus.RequiresVerification:
            //            Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
            //                                            Request.QueryString["ReturnUrl"],
            //                                            RememberMe.Checked),
            //                              true);
            //            break;
            //        case SignInStatus.Failure:
            //        default:
            //            FailureText.Text = "Invalid login attempt";
            //            ErrorMessage.Visible = true;
            //            break;
            //    }
            //}
        }
    }
}