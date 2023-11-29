<%@ Page Title="Contact" Language="C#"  AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WIL.Contact" Async="true"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
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
                       <li class="nav-item"><asp:LinkButton ID="LinkButton6" runat="server" Text="Home" OnClick="Home_Btn_Clicked" PostBackUrl="Default.aspx" CssClass="nav-link" /></li>
                       <li class="nav-item"><asp:LinkButton ID="LinkButton5" runat="server" Text="About" OnClick="About_Btn_Clicked" PostBackUrl="About.aspx" CssClass="nav-link" /></li>
                       <li class="nav-item"><asp:LinkButton ID="LinkButton4" runat="server" Text="Maize" OnClick="Maize_Btn_Clicked" PostBackUrl="Maize.aspx" CssClass="nav-link" /></li>
                       <li class="nav-item"><asp:LinkButton ID="LinkButton3" runat="server" Text="Sorghum" OnClick="Sorghum_Btn_Clicked" PostBackUrl="Sorghum.aspx" CssClass="nav-link" /></li>
                       <li class="nav-item"><asp:LinkButton ID="LinkButton2" runat="server" Text="Login" OnClick="Login_Btn_Clicked" PostBackUrl="AdminLogin.aspx" CssClass="nav-link" /></li>
                       <li class="nav-item"><asp:LinkButton ID="buttonLink" runat="server" Text="Job Application" OnClick="JA_Btn_Clicked" PostBackUrl="JobApplication.aspx" CssClass="nav-link" /></li>
                   </ul>
               </div>
           </nav>
       </div>
  
        <div class="contactForm">
            <div class="heading-container">
    <div>
        <img src="Images/ContactImage.jpg" alt="Your Image Description" class="heading-image"  data-aos="fade-up"/>
    </div>
    <div>
        <h1 data-aos="fade-up">Contact Us</h1>
    </div>
</div>
            <div>
                <label for="name">Name:</label>
                <asp:TextBox ID="nameTextBox" runat="server" required="required"></asp:TextBox>
            </div>
            <div>
                <label for="email">Email Address:</label>
                <asp:TextBox ID="emailTextBox" runat="server" required="required"></asp:TextBox>
            </div>
            <div>
                <label for="message">Message:</label>
                <asp:TextBox ID="messageTextBox" runat="server" TextMode="MultiLine" required="required"></asp:TextBox>
            </div>
            <div class="radio-button">
                <asp:RadioButton ID="signupRadioButton" runat="server" Text="Sign up for promotions" OnClick="toggleRadio(this)" />
            </div>
            <div>
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="UploadDetails" />
            </div>
        </div>
    </form>
    <style>
         .contactForm {
        margin: 20px;
        padding: 20px;
    }

       .heading-container {
            text-align: center;
            margin-bottom: 20px; /* Spacing below the heading */
            font-family:sans-serif;
    }

    .heading-container .heading-image {
         max-width: 100%;
            height: auto;
            margin-top: 15px;
    }

    .contactForm label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .contactForm div {
        margin-bottom: 15px;
    }

     .contactForm input[type="text"], .contactForm textarea {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box; /* Makes sure the padding doesn't affect the overall width */
        margin-bottom: 10px;
    }

     .contactForm input[type="submit"] {
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

    .contactForm input[type="submit"]:hover {
        background-color: #218838; /* Darker green for hover effect */
    }
      .contactForm .radio-button {
        display: flex;
        align-items: center; /* Aligns the radio button and label vertically */
    }

    .contactForm .radio-button input[type="radio"] {
        margin-right: 5px; /* Adds some space between the radio button and the label */
    }
    </style>
    <script>
        AOS.init();
        function toggleRadio(radio) {
            if (radio.checked && radio.getAttribute("data-waschecked") === "true") {
                radio.checked = false;
                radio.setAttribute("data-waschecked", "false");
            } else {
                radio.setAttribute("data-waschecked", "true");
            }
        }
    </script>
</body>
</html>