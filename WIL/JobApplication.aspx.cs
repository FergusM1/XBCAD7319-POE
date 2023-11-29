using System;
using System.IO;
using System.Linq;
using System.Web.UI;

namespace WIL
{
    public partial class JobApplication : Page
    {
        
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
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

        protected void Login_Btn_Clicked(object sender, EventArgs e)
        {

        }

        protected void Contact_Btn_Clicked(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Uploads Job Application information if the inputs are deemed valid.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected async void UploadApplication(object sender, EventArgs e)
        {
            bool valid = true;
            char[] charsToCheck = { '<', '>', '*', '=', ',' };
            if (name_txt.Text.Any(c => charsToCheck.Contains(c)) || email_txt.Text.Any(c => charsToCheck.Contains(c)))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "forbiddenCharAlert2", "alert('Your input contains one or more forbidden characters such as a * sign, please remove before retrying!');", true);
                valid = false;
            }
            else
            {
                try
                {
                    await DatabaseController.AddJobApplication(name_txt.Text, email_txt.Text);
                    await DatabaseController.GetApplicationID(name_txt.Text, email_txt.Text);
                }catch(Exception)
                {
                    valid = false;
                    Page.ClientScript.RegisterStartupScript(GetType(), "applicationDetailsErrorAlert", "alert('Failed to store application details!');", true);
                }
            }
        
                         

            if (valid)
            {
                // Check if the file is a PDF
                if (Path.GetExtension(CV_upload.FileName).Equals(".pdf", StringComparison.OrdinalIgnoreCase))
                {
                    if (await DatabaseController.AddCV(Path.GetFileName(CV_upload.PostedFile.FileName), CV_upload.PostedFile.ContentType, CV_upload.PostedFile.InputStream))
                    {
                        Page.ClientScript.RegisterStartupScript(GetType(), "applicationSuccessAlert", "alert('Application has been sent!');", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(GetType(), "applicationFileFailAlert", "alert('Failed to store your CV file!');", true);
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "forbiddenFileAlert", "alert('You can only upload .pdf files!');", true);
                }
            }
        }
    }
}