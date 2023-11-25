<%@ Page Title="About" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WIL.About" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Vitastart</title>
                <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
 <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
    <body>
    <form id="form1" runat="server">
         <div class="container-fluid">
     <div class="row">
         <!-- Image at the top -->
         <div class="col-md-12">
             <img src="Images/VitaStartLogo.jpg" alt="Company Logo" class="img-fluid" />
         </div>
     </div>
     </div>

     <!-- Navigation bar below the image -->
     <div class="row">
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
             <div class="container">
                 <ul class="navbar-nav ml-auto">
                     <li class="nav-item"><asp:LinkButton ID="LinkButton4" runat="server" Text="Maize" OnClick="Maize_Btn_Clicked" PostBackUrl="Maize.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="LinkButton3" runat="server" Text="Sorghum" OnClick="Sorghum_Btn_Clicked" PostBackUrl="Sorghum.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="LinkButton2" runat="server" Text="Login" OnClick="Login_Btn_Clicked" PostBackUrl="AdminLogin.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="LinkButton1" runat="server" Text="Contact" OnClick="Contact_Btn_Clicked" PostBackUrl="Contact.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="buttonLink" runat="server" Text="Job Application" OnClick="JA_Btn_Clicked" PostBackUrl="JobApplication.aspx" CssClass="nav-link" /></li>
                 </ul>
             </div>
         </nav>
     </div>
        <div class="container-fluid">
             <div class="row align-items-center">
        <div class="col-md-4 text-center" data-aos="fade-right">
            <img src="Images/VitaStartLogo.jpg" alt="Image Description 1" class="img-fluid" />
        </div>
        <div class="col-md-4">
            <div class="about-text" data-aos="fade-up">
                <h2>WHAT IS VITASTART?</h2>
                <p>Vitastart is a highly nutritious breakfast cereal packed with nutrients and energy to power hard-working South Africans every day. Made from either sorghum or maize, these powerhouse grains in their natural form contain carbohydrates, proteins and other nutrients – essential sources of sustainable energy. Supplemented with a unique formulation of vitamins and minerals, Vitastart is healthy, convenient and keeps you going through the most demanding of activities.</p>
<p>Available in a variety of flavours, Vitastart’s mission is to provide all South Africans with an affordable yet highly nutritious meal that not only helps them perform at their best, but which gives them the essential nutrients to live strong, healthy lives.</p>
            </div>
        </div>
        <div class="col-md-4 text-center" data-aos="fade-left">
            <img src="Images/MaizeLogo.jpg" alt="Image Description 3" class="img-fluid" />
        </div>
    </div>
        
       <div class="middle-image-container" data-aos="fade-up">
    <p class="product-text">VitaStart is a product of</p>
    <img src="Images/PlazaImage.png" alt="Image Description 2" class="middle-image" />
</div>
  </div>
    </form>
        <style>
                .image-row {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .image-row img {
            max-width: 100%;
            height: auto;
            margin: 0 10px; /* Adds space between images */
        }

        .about-text {
            margin: 20px;
            font-family:sans-serif;
            font-size:15px;
            text-align:center;
            border-bottom:solid 5px;
        }
        .about-text h2{
            color:red;
            border-bottom:solid 5px;
        }
       .middle-image-container {
        text-align: center; /* Center-align the entire container */
        margin: 20px 0;
    }
         .middle-image {
        width: 300px; /* Adjust as needed */
        height: auto;
    }

    .product-text {
        margin-bottom: 10px; /* Space between text and image */
        font-family:sans-serif;
    }
        </style>
        <script>
            AOS.init({
                duration: 800,
                easing: 'ease',
                once: true,
            });
        </script>
</body>
</html>