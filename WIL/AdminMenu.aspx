<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMenu.aspx.cs" Inherits="WIL.AdminMenu" Async="true" EnableEventValidation="true" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>File Upload and Details</title>
            <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
 <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="job-form">
        <h1 data-aos="fade-left">Promotion File Upload and Job Application Details</h1>
        
        <!-- File Upload Control -->
          <div class="row justify-content-center">
            <div class="col-md-12 text-center">
           <img src="Images/promotionImage.jpg" alt="Company Logo" class="img-fluid" data-aos="fade-right" />
                <h2 data-aos="fade-left">Upload Promotions</h2>
           <label for="file_upload" class="drop-container" id="dropcontainer">
    <span class="drop-title">Drop Promotional Ad Here</span>
    or
    <asp:FileUpload ID="file_upload" runat="server" CssClass="form-control-file" Accept="application/pdf" />
</label>
            <asp:Button ID="uploadButton" runat="server" Text="Upload File" OnClick="UploadFile" />
        </div>
              </div>
        
       <div class="row justify-content-center">        
            <div class="col-12"> 
                  <img src="Images/reviewImage.png" alt="Company Logo" class="img-fluid" data-aos="fade-left"/>
                <h2 data-aos="fade-right">Current Job Applications</h2>
            <asp:GridView ShowHeaderWhenEmpty="true" ID="detailsGridView" runat="server" OnRowDataBound="detailsGridView_RowDataBound" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" PagerStyle-CssClass="pager" AutoGenerateColumns="false" OnRowCommand="GridView_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email Address" />
                    <asp:BoundField DataField="FileName" HeaderText="File Name" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="acceptButton" runat="server" Text="Accept" CommandName="Accept" CommandArgument='<%# Eval("Name") + "|" + Eval("Email") %>' />
                            <asp:Button ID="rejectButton" runat="server" Text="Reject"  CommandName="Reject" CommandArgument='<%# Eval("Name") + "|" + Eval("Email") %>' />
                            <asp:Button ID="downloadButton" runat="server" Text="Download" CommandName="Download" CommandArgument='<%# Eval("Name") + "|" + Eval("Email") + "|" + Eval("FileName")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate> <div align="center">No job applications to review.</div></EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
    </form>
    <style>
        .job-form-block {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width:100%; /* Adjust the height as needed */
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
body {
    font-family: Arial, sans-serif;
    background-color: white;
    margin: 0;
    padding: 0;
    text-align:center;
}


h1 {
    font-size: 30px;
    color: white;
    border-bottom:solid 2px;
    font-family:sans-serif;
    background-color:powderblue;
}
h2{
    font-family:sans-serif;
}

/* File Upload Styles */
#fileUpload {
    margin: 20px 0;
}

#uploadButton {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-left:15px;
}

/* Table Styles */
#detailsGridView {
width: 80%;
border: solid 2px black;
min-width: 80%; 
position:relative;
left:150px;
}
.col-12{
    position:relative;
    top:100px;
    border-top:solid 2px black;
}

#detailsGridView th, #detailsGridView td {
    padding: 10px;
    text-align: center;
    border: 1px solid #ddd;
}

#detailsGridView th {
    background-color: #007bff;
    color: #fff;
}
.header
{
background-color: #646464;
font-family: Arial;
color: White;
border: none 0px transparent;
height: 25px;
text-align: center;
font-size: 16px;
}
.img-fluid{
    margin-top:50px;
    margin-bottom:10px;
}
.rows
{
background-color: #fff;
font-family: Arial;
font-size: 14px;
color: #000;
min-height: 25px;
text-align: left;
border: none 0px transparent;
}
.rows:hover
{
background-color: #ff8000;
font-family: Arial;
color: #fff;
text-align: left;
}
.selectedrow
{
background-color: #ff8000;
font-family: Arial;
color: #fff;
font-weight: bold;
text-align: left;
}
/* Button Styles */
#detailsGridView .btn {
    padding: 5px 10px;
    margin-right: 5px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

/* Responsive Styles */
@media (max-width: 768px) {
    .container {
        padding: 10px;
    }

    h1 {
        font-size: 20px;
    }

    #fileUpload {
        margin: 10px 0;
    }

    #uploadButton {
        padding: 8px 16px;
    }

    #detailsGridView th, #detailsGridView td {
        padding: 8px;
    }

    #detailsGridView .btn {
        padding: 4px 8px;
    }
}
    </style>
    <script>
        AOS.init({
            duration: 800,
            easing: 'ease',
            once: true,
        });
        var dropContainer = document.getElementById('dropcontainer');
        var fileUpload = document.getElementById('<%= file_upload.ClientID %>');

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

