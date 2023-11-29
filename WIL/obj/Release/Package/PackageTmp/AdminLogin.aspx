<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WIL.AdminLogin" Async="true"%>

<!DOCTYPE html>
<html>
<head>
               <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
 <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <title>Login Page</title>
</head>
<body>
    <form id="loginForm" runat="server">
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
                     <li class="nav-item"><asp:LinkButton ID="LinkButton6" runat="server" Text="Home" OnClick="Home_Btn_Clicked" PostBackUrl="Default.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="LinkButton5" runat="server" Text="About" OnClick="About_Btn_Clicked" PostBackUrl="About.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="LinkButton4" runat="server" Text="Maize" OnClick="Maize_Btn_Clicked" PostBackUrl="JobApplication.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="LinkButton3" runat="server" Text="Sorghum" OnClick="Sorghum_Btn_Clicked" PostBackUrl="JobApplication.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="LinkButton1" runat="server" Text="Contact" OnClick="Contact_Btn_Clicked" PostBackUrl="Contact.aspx" CssClass="nav-link" /></li>
                     <li class="nav-item"><asp:LinkButton ID="buttonLink" runat="server" Text="Job Application" OnClick="JA_Btn_Clicked" PostBackUrl="JobApplication.aspx" CssClass="nav-link" /></li>
                 </ul>
             </div>
         </nav>
     </div>
  
        <div class="container-fluid">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-4">
                    <div class="text-center">
                                     <img src="Images/loginImage.png" alt="Company Logo" class="img-fluid" data-aos="fade-left" />
                        <h1 data-aos="fade-right">Login</h1>
                    </div>
                    <div class="form-group">
                                            <label for="UsernameTextBox">Username:</label>
                        <asp:TextBox ID="UsernameTextBox" runat="server" placeholder="Username" required="required" CssClass="form-control"/>
                    </div>
                    <div class="form-group">
                                            <label for="PasswordTextBox">Password:</label>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" placeholder="Password" required="required" CssClass="form-control" />
                    </div>
                    <div class="text-center">
                        <asp:Button ID="LoginButton" runat="server" Text="Log In" OnClick="LoginButton_Click" CssClass="btn btn-primary" />
                        <img src="Images/VitaStartLogo.jpg" alt="Company Logo" class="img-fluid" data-aos="fade-right" />
                    </div>
                </div>
            </div>
        </div>
    </form>
      <style>
        body {
            background-color: white; 
            text-align: left;
            font-family:sans-serif;
        }
        form-group{
            margin-bottom:15px;
        }
      .col-md-4{
          width:100%;
          font-family:sans-serif;
      }
      label{
          display: block;
margin-bottom: 5px;
font-weight: bold;
text-align:left;
      }
.btn-primary{
        width: 100%;
padding: 10px;
border: none;
border-radius: 4px;
background-color: #28a745; /* Bootstrap success color */
color: white;
font-size: 16px;
cursor: pointer;
transition: background-color 0.3s;
}
.btn-primary:hover{
background-color: #218838; /* Darker green for hover effect */
}       
.text-center{
    margin-top:15px;
}
    </style>
    <script>AOS.init();</script>
</body>
</html>

