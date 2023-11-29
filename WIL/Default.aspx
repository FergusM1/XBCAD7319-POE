<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WIL._Default"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Home</title>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
 <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
   
</head>
<body>
    <form id="Form1" runat="server">
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
                            <li class="nav-item"><asp:LinkButton ID="LinkButton5" runat="server" Text="About" OnClick="About_Btn_Clicked" PostBackUrl="About.aspx" CssClass="nav-link" /></li>
                            <li class="nav-item"><asp:LinkButton ID="LinkButton4" runat="server" Text="Maize" OnClick="Maize_Btn_Clicked" PostBackUrl="Maize.aspx" CssClass="nav-link" /></li>
                            <li class="nav-item"><asp:LinkButton ID="LinkButton3" runat="server" Text="Sorghum" OnClick="Sorghum_Btn_Clicked" PostBackUrl="Sorghum.aspx" CssClass="nav-link" /></li>
                            <li class="nav-item"><asp:LinkButton ID="LinkButton2" runat="server" Text="Login" OnClick="Login_Btn_Clicked" PostBackUrl="AdminLogin.aspx" CssClass="nav-link" /></li>
                            <li class="nav-item"><asp:LinkButton ID="LinkButton1" runat="server" Text="Contact" OnClick="Contact_Btn_Clicked" PostBackUrl="Contact.aspx" CssClass="nav-link" /></li>
                            <li class="nav-item"><asp:LinkButton ID="buttonLink" runat="server" Text="Job Application" OnClick="JA_Btn_Clicked" PostBackUrl="JobApplication.aspx" CssClass="nav-link" /></li>
                        </ul>
                    </div>
                </nav>
            </div>
  
           
        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <div class="card rounded yellow-background">
                        <div class="card-body">
     High in Vitamin A  <br />Essential to the structure and function of the skin and mucous membranes in eyes and lungs.

                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card rounded red-background">
                        <div class="card-body">
Very High in Vitamin B1<br />Maintains a healthy nervous system and is required to release energy from carbohydrates.
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card rounded yellow-background">
                        <div class="card-body">
Very High in Vitamin B3<br />Required for the release of energy from food and functioning of the skin and nervous system.
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card rounded red-background">
                        <div class="card-body">
Very High in Vitamin B6<br />Essential for the formation of red blood cells and the metabolism and transport of iron.
                        </div>
                    </div>
                </div>
            </div>
                        <div class="row">
                <div class="col">
                    <div class="card rounded yellow-background">
                        <div class="card-body">
     High in Vitamin C <br />Enhances the immune system of our body, protecting us from colds and flu.

                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card rounded red-background">
                        <div class="card-body">
 High in Iron<br />Required for production of red blood cells and the oxygen-carrying capacity in the blood.
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card rounded yellow-background">
                        <div class="card-body">
 High in Magnesium<br />An essential mineral present in all human tissues, especially in bone.
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card rounded red-background">
                        <div class="card-body">
 High in Zinc<br />Essential for growth and tissue repair and required for a functioning immune system.
                        </div>
                    </div>
                </div>
        </div>
            </div>
 
        <div class="horizontal-divider">
<div class="container">
    <div class="row">
        <!-- Slideshow Column -->
        <div class="col-md-6">
            <div class="slideshow-container" runat="server" id="slideshowContainer">
                <!-- Slideshow content -->
            </div>
        </div>

        <!-- Text Column -->
        <div class="col-md-6">
            <div class="text-content">
               <h3>FULL OF ENERGY</h3>
                <p>Keep your body fueled with Vitastart, the high-energy grain cereal.<br />Helping you feel fuller for longer, Vitastart is ideal to power you<br />through your busy day</p>
            </div>
              <div class="text-content">
     <h3>VITAMINS & MINERALS</h3>
      <p>Vitastart is scientifically formulated and balanced by South Africa’s top<br />food technologists and dieticians. Our cereals champion the natural<br />nutrients and benefits of sorghum and maize, while adding in a unique<br />formulation of vitamins and minerals.</p>
  </div>
              <div class="text-content">
     <h3>PACKED WITH PROTEIN</h3>
      <p>Vitastart is a great source of protein, the essential<br />building blocks of life, helping your body repair cells and<br />make new ones.</p>
  </div>
        </div>
    </div>
</div>
        </div>
              <div class="container mt-4">
            <div class="row">
                <div class="col-md-4" data-aos="fade-up">
                    <h2>FIBRE FOR DIGESTIVE HEALTH</h2>
                    <p>We use wholegrain Maize in Vitastart M, making it high<br />in fibre. Vitastart Sorghum is an excellent source of<br />fibre, ensuring you get enough dietary fibre to maintain<br />a healthy digestive system.</p>
                </div>
                <div class="col-md-4" data-aos="fade-up">
                    <h2>LOW IN SALT</h2>
                    <p>Vitastart salt levels are contained within the<br />South African National Salt Guidelines for<br />breakfast cereals.</p>
                </div>
                <div class="col-md-4" data-aos="fade-up">
                    <h2>HIGH IN IRON</h2>
                    <p>Both Vitastart cereals are high in iron – a<br />very important mineral for both young and<br />old, helping our red blood cells transport<br />oxygen to all parts of the body.</p>
                </div>
            </div>
        </div>
        <!-- Paragraph text at the bottom -->
  <div class="container">
      <div class="row">
    <!-- Image at the top -->
    <div class="col-md-12 bottomImage">
        <img src="Images/VitaStartLogo.jpg" alt="Company Logo" class="img-fluid" />
    </div>
</div>
    <div class="row">
        <div class="col-md-4 text-center">
            <p>Contact Email: <u>info@vitastartsa.co.za</u></p>
        </div>
        <div class="col-md-4 text-center">
            <p>Telephone Number: <u>+27 43 831 1066</u></p>
        </div>
        <div class="col-md-4 text-center">
            <p>&copy; <%: DateTime.Now.Year %> by Plaza Products PTY (Ltd)</p>
        </div>
    </div>
</div>

       
 </form>
    <style>   
         
     body {
         overflow: auto;
         height:1900px;
     }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
        }
    .card {
    height: 200px; /* Adjust as needed */
    border-radius: 20px; /* Rounded edges */
    margin-top:20px;
}

.card-body {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
    font-family: sans-serif;
}
.red-background {
    background-color: red;
    color:white;
    
}
.yellow-background {
    background-color: gold;
    color:black;
}
    .slideshow-container {
        position: relative;
        margin: auto;
       overflow:hidden;
       width:100%;
        height:100%;
        right:50px;
    }

   .mySlides {
        display: block; 
        width: 100%;
        position:absolute;
        opacity: 0; /* Start with slides invisible */
        transition:opacity 1.5s ease-in-out; /* Smooth transition for opacity */
        margin-top:40px;
    }
  .active{
      opacity:1;
  }
   .mySlides img{
    width: 100%;
    height: 100%;
     border:solid 5px;
   }
   .text-content{
       position:relative;
       left:150px;
       font-family:sans-serif;
       margin-top:40px;
   }
   .text-content h3{
       color:red
   }
.text-center{
    position:relative;
    color:orange;
    top:200px;
    right:30px;
}
.horizontal-divider {
    border-top: 2px solid #333;
    border-bottom: 2px solid #333; /* Customize the color and width as needed */
}
.col-md-4 h2{
    color: red;
}
.col-md-4{
    font-family:sans-serif; 
}
.container.mt-5{
    margin-bottom:10px;
}
.container.mt-4{
    position:relative;
    top:50px;
    left:30px;
}
.bottomImage{
    position:relative;
    left:450px;
    top:100px;
}

    </style>
 <script>
     AOS.init();
     window.onload = function () {
         showSlides();
     };
     var slideIndex = 0;
     

     function showSlides() {
         var i;
         var slides = document.getElementsByClassName("mySlides");
         for (i = 0; i < slides.length; i++) {
             slides[i].classList.remove("active");
         }
         slideIndex++;
         if (slideIndex > slides.length) { slideIndex = 1 }
         slides[slideIndex - 1].classList.add("active");
         setTimeout(showSlides, 6000); 
     }
 </script>
</body>
</html>

