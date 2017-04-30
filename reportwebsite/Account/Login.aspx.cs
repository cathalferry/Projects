using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using reportwebsite.Models;
using System.Linq;

namespace reportwebsite.Account
{
    public partial class Login : Page
    {
        Course_TimetableEntities db = new Course_TimetableEntities();



        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

  

        protected void LogInClick(object sender, EventArgs e)
        {
            User_Table user = new User_Table();
            var UserId = tbxUsername.Text;
            var passwod = Password.Text;
            foreach (var _user in db.User_Table.Where(a=>a.UserID == UserId && a.Password==passwod))
            {
                user = _user;
            }
            if(user.UserID.Length==0)
            {

                //Msgbox("invalid user",this.Page, this);
            }
        }

    }
}