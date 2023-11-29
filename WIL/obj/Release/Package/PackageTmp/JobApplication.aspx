
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobApplication.aspx.cs" Inherits="WIL.JobApplication" Async="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Job Applications</title>
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
                 <li class="nav-item"><asp:LinkButton ID="LinkButton1" runat="server" Text="Contact" OnClick="Contact_Btn_Clicked" PostBackUrl="Contact.aspx" CssClass="nav-link" /></li>
             </ul>
         </div>
     </nav>
 </div>
</div>
   <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12 text-center">
                <div class="form-group top" data-aos="fade-up">
  <img src="Images/jobApplicationImage.jpg" alt="Company Logo" class="img-fluid" />
    <h1>Job Application</h1>
</div>
                <div class="form-group">
                    <label for="name_txt">Name:</label>
                    <asp:TextBox ID="name_txt" runat="server" CssClass="form-control" MaxLength="256" placeholder="Enter your full name." required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="email_txt">Email Address:</label>
                    <asp:TextBox ID="email_txt" runat="server" CssClass="form-control" MaxLength="256" placeholder="Enter your email address." required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="CV_upload" class="drop-container" id="dropcontainer">
                        <span class="drop-title">Drop CV/Resume here</span>
                        or
                        <asp:FileUpload ID="CV_upload" runat="server" CssClass="form-control-file" Accept="application/pdf" required="required"/>
                    </label>
                </div>
               <div class="form-group">
    <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="UploadApplication" />
</div>
            </div>
        </div>
    </div>
    </form>
    <style>
        label{
             display: block;
 margin-bottom: 5px;
 font-weight: bold;
 text-align:left;
        }
        body{
            font-family:sans-serif;
        }
          .form-group {
        margin-bottom: 15px;
    }

    .form-control-file {
        width: 100%; /* Full width of the column */
        /* Other styles... */
    }
        .form-control-file{
              width: 100%;
  max-width: 100%;
  color: #444;
  padding: 5px;
  background: #fff;
  border-radius: 10px;
  border: 1px solid #555;
        }
        .form-control-file::file-selector-button{
            margin-right: 20px;
  border: none;
  background: #084cdf;
  padding: 10px 20px;
  border-radius: 10px;
  color: #fff;
  cursor: pointer;
  transition: background .2s ease-in-out;
        }
        .form-control-file::file-selector-button:hover{
             background: #0d45a5;
}
         .drop-container {
        border: 2px dashed #ccc;
        text-align: center;
        padding: 20px;
        cursor: pointer;
    }

    .drop-container.highlight {
        border-color: blue;
    }
    .form-group #submitButton{
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
    .form-group #submitButton:hover{
        background-color: #218838; /* Darker green for hover effect */
    }
    </style>
    <script>
        AOS.init();
        var dropContainer = document.getElementById('dropcontainer');
        var fileUpload = document.getElementById('<%= CV_upload.ClientID %>');

        // Prevent default drag behaviors
        ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
            dropContainer.addEventListener(eventName, preventDefaults, false)
        });

        function preventDefaults(e) {
            e.preventDefault();
            e.stopPropagation();
        }

        // Highlight drop area when item is dragged over it
        ['dragenter', 'dragover'].forEach(eventName => {
            dropContainer.addEventListener(eventName, highlight, false)
        });

        ['dragleave', 'drop'].forEach(eventName => {
            dropContainer.addEventListener(eventName, unhighlight, false)
        });

        function highlight(e) {
            dropContainer.classList.add('highlight');
        }

        function unhighlight(e) {
            dropContainer.classList.remove('highlight');
        }

        // Handle dropped files
        dropContainer.addEventListener('drop', handleDrop, false);

        function handleDrop(e) {
            var dt = e.dataTransfer;
            var files = dt.files;

            fileUpload.files = files;
        }
    </script>
</body>
</html>

