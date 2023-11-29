using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WIL
{
    public partial class AdminMenu : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                UpdateDataView();
            }

        }
        /// <summary>
        /// Gets the index of the button the user clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void detailsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Assuming you have a Button with ID "downloadButton" in one of your TemplateField
                Button downloadButton = (Button)e.Row.FindControl("downloadButton");
                if (downloadButton != null)
                {
                    downloadButton.CommandArgument = e.Row.RowIndex.ToString();
                }

                // Similarly, set CommandArgument for other buttons like "acceptButton", "rejectButton", etc.
                Button acceptButton = (Button)e.Row.FindControl("acceptButton");
                if (acceptButton != null)
                {
                    acceptButton.CommandArgument = e.Row.RowIndex.ToString();
                }

                Button rejectButton = (Button)e.Row.FindControl("rejectButton");
                if (rejectButton != null)
                {
                    rejectButton.CommandArgument = e.Row.RowIndex.ToString();
                }
            }
        }
        /// <summary>
        /// Peforms accept,reject and download actions based on the user's selection
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected async void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string Name;
            string email;
            string message;
            string fileName;


            if (e.CommandName == "Accept")
            {
                message = "Congratulations, we reviewed your CV and we have decided to accept your application for a job. Please contact us on this email to confirm your interest.";
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = detailsGridView.Rows[rowIndex];

                Name = row.Cells[0].Text;
                email = row.Cells[1].Text;

                await MailSystem.ApplicationReply(Name, email, message);
                await DatabaseController.GetApplicationID(Name, email);
                await DatabaseController.DeleteCVFile();
                await DatabaseController.DeleteJobApplication();
                UpdateDataView();
            }
            else if (e.CommandName == "Reject")
            {
                message = "Hello, we reviewed your CV and sadly, we have decided to reject your application for a job. Please contact us on this email if you have any further questions";
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = detailsGridView.Rows[rowIndex];

                Name = row.Cells[0].Text;
                email = row.Cells[1].Text;

                await MailSystem.ApplicationReply(Name, email, message);
                await DatabaseController.GetApplicationID(Name,email);
                await DatabaseController.DeleteCVFile();
                await DatabaseController.DeleteJobApplication();
                UpdateDataView();
            }
            else if (e.CommandName == "Download")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = detailsGridView.Rows[rowIndex];

                Name = row.Cells[0].Text;
                email = row.Cells[1].Text;
                fileName = row.Cells[2].Text;

                if (await DatabaseController.GetApplicationID(Name, email))
                {
                    if (await DatabaseController.GetFile())
                    {
                        Response.Clear();
                        Response.Buffer = true;
                        Response.Charset = "";
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        Response.ContentType = DatabaseController.contentType;
                        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
                        Response.BinaryWrite(DatabaseController.file);
                        HttpContext.Current.ApplicationInstance.CompleteRequest();
                    }
                }

            }

        }
        /// <summary>
        /// Uploads and sends promotional material
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected async void UploadFile(object sender, EventArgs e)
        {
            if (DatabaseController.emails.Count > 0)
            {
                if (await MailSystem.SendPromotions(file_upload.FileName, file_upload.PostedFile))
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "promotionSuccessAlert", "alert('Files successfully sent!');", true);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "promotionFailureAlert", "alert('Failed to send files!');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "noEmailAlert", "alert('No emails added yet!');", true);
            }
        }
        /// <summary>
        /// Updates GridView
        /// </summary>
        private async void UpdateDataView()
        {
            await DatabaseController.ViewData();
            detailsGridView.DataSource = DatabaseController.dataTable;
            detailsGridView.DataBind();
        }
        /// <summary>
        /// Job Application Data Class
        /// </summary>
        public class JobApplicationData
        {
            public string Name { get; set; }
            public string Email { get; set; }
            public string FileName { get; set; }

        }
    }
}