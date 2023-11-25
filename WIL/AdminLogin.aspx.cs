using System;
using System.Linq;
using System.Web.UI;

namespace WIL
{
    public partial class AdminLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void LoginButton_Click(object sender, EventArgs e)
        {
            char[] charsToCheck = { '<', '>', '*', '=', ',' };
            if (!UsernameTextBox.Text.Any(c => charsToCheck.Contains(c)) && !PasswordTextBox.Text.Any(c => charsToCheck.Contains(c))) {
                if (await DatabaseController.AdminLogin(UsernameTextBox.Text, PasswordTextBox.Text))
                {
                    Response.Redirect("AdminMenu.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "loginFailAlert", "alert('Incorrect login details entered!');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "forbiddenCharAlert", "alert('Your input contains one or more forbidden characters such as a * sign, please remove before retrying!');", true);
            }
        }

        protected void JA_Btn_Clicked(object sender, EventArgs e)
        {

        }

        protected void Home_Btn_Clicked(object sender, EventArgs e)
        {

        }

        protected void About_Btn_Clicked(object sender, EventArgs e)
        {

        }

        protected void Maize_Btn_Clicked(object sender, EventArgs e)
        {

        }

        protected void Sorghum_Btn_Clicked(object sender, EventArgs e)
        {

        }

        protected void Contact_Btn_Clicked(object sender, EventArgs e)
        {

        }
    }
}