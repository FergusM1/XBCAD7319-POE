using System;
using System.Web.UI;

namespace WIL
{
    public partial class _Default : Page
    {
        /// <summary>
        /// Adds images for slideshow when the page loads
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] images = { "Images/StockImage1.jpg", "Images/StockImage2.jpg", "Images/StockImage3.jpg" };

            foreach (var img in images)
            {
                slideshowContainer.InnerHtml += $"<div class='mySlides'><img src='{img}' style='width:100%'></div>";
            }
        }

        protected void JA_Btn_Clicked(object sender, EventArgs e)
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
    }
}



