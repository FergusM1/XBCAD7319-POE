using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WIL
{
    public partial class _Default : Page
    {
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



