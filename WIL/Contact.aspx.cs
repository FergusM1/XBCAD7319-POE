using System;
using System.Linq;
using System.Web.UI;

namespace WIL
{

    public partial class Contact : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected async void UploadDetails(object sender, EventArgs e)
        {
            
            string message = "Your message has been sent!";
            
            bool valid = true;
            char[] charsToCheck = { '<', '>', '*', '=' };
            if (nameTextBox.Text.Any(c => charsToCheck.Contains(c)) || emailTextBox.Text.Any(c => charsToCheck.Contains(c)))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "forbiddenCharAlert3", "alert('Your input contains one or more forbidden characters such as a * sign, please remove before retrying!');", true);
                valid = false;
            }
            if (signupRadioButton.Checked && valid)
            {
                valid = await DatabaseController.AddCustomerEmail(emailTextBox.Text);
                if (valid)
                {
                    message = "Your message was sent and you have signed up for promotions! Contact us if you wish to unsubscribe.";
                }
            }

            if (valid) {
                try
                {
                    if (await MailSystem.SendEmail(nameTextBox.Text, emailTextBox.Text, messageTextBox.Text))
                    {
                        Page.ClientScript.RegisterStartupScript(GetType(), "contactSuccessAlert", "alert('" + message + "');", true);
                    }
                }
                catch (Exception)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "contactFailAlert", "alert('Failed to send your message!');", true);
                }
            }
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

        protected void Login_Btn_Clicked(object sender, EventArgs e)
        {

        }

        protected void JA_Btn_Clicked(object sender, EventArgs e)
        {

        }
    }
}