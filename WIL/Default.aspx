<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WIL._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
          <div class="classroomImage">
                <asp:Image ID="Classroom" runat="server" ImageUrl= "~/Images/Classroom.jpg" />
                        </div>

        <div class="row">
            <section class="col-md-4" aria-labelledby="vitastartTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                  The original, made with the very best whole-grain Sorghum.
                </p>
                <div class="VitastartBtn">
              
                     <asp:Button ID="vitastartBtn" runat="server" Text="View More Information"/> 
               
                     </div>
            </section>
            <section class="col-md-4" aria-labelledby="maizeTitle">
                <h2 id="librariesTitle">Get more libraries</h2>
                <p>
                    Vitastart M, all the nutrients from quality fuel-filled maize.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="jobTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>
