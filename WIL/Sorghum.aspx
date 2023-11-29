<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sorghum.aspx.cs" Inherits="WIL.Sorghum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sorghum</title>
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
                          <li class="nav-item"><asp:LinkButton ID="LinkButton2" runat="server" Text="Login" OnClick="Login_Btn_Clicked" PostBackUrl="AdminLogin.aspx" CssClass="nav-link" /></li>
                          <li class="nav-item"><asp:LinkButton ID="LinkButton1" runat="server" Text="Contact" OnClick="Contact_Btn_Clicked" PostBackUrl="Contact.aspx" CssClass="nav-link" /></li>
                          <li class="nav-item"><asp:LinkButton ID="buttonLink" runat="server" Text="Job Application" OnClick="JA_Btn_Clicked" PostBackUrl="JobApplication.aspx" CssClass="nav-link" /></li>
                      </ul>
                  </div>
              </nav>
          </div>
  
        <div class="container">
            <div class="bottom-divider">
            <h2>Nutritional Information</h2>
                </div>
                 <div class="color-key">
                <div class="row">
                    <div class="col">
                        <span class="color-box highIn"></span> High In
                    </div>
                     <div class="col">
     <span class="color-box veryHighIn"></span> Very High In
 </div>
                     <div class="col">
     <span class="color-box sourceOf"></span> Source Of
 </div>
                </div>
            </div>
            <div class="row">
                <!-- First Table -->
                <div class="col-md-4">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Nutrient</th>
                                <th>Total</th>
                                <th>% NRV</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                        <td>Energy (kJ/100g)</td>
                        <td>1417</td>
                        <td></td>
                        </tr>
                              <tr>
  <td>Protein (g/100g)</td>
  <td>8,5</td>
  <td>15,4%</td>
  </tr>
                              <tr>
  <td>Glycaemic Carbohydrate (g/100g)</td>
  <td>64,5</td>
  <td></td>
  </tr>
                              <tr>
  <td>Total Sugar (g/100g)</td>
  <td>23,4</td>
  <td></td>
  </tr>
                              <tr>
  <td>Total Fat (g/100g)</td>
  <td>3,5</td>
  <td></td>
  </tr>
                              <tr>
  <td>Saturated Fat (g/100g)</td>
  <td>0,64</td>
  <td></td>
  </tr>
                              <tr class="sourceOf">
  <td>Total Dietary Fibre (g/100g)</td>
  <td>5,1</td>
  <td></td>
  </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Second Table -->
                <div class="col-md-4">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Nutrient</th>
                                <th>Total</th>
                                <th>% NRV</th>
                            </tr>
                        </thead>
                        <tbody>
     <tr class="sourceOf">
 <td>Vitamin A (µg/100g)</td>
 <td>135</td>
 <td>15,0%</td>
 </tr> 
                                <tr class="highIn">
<td>Vitamin B1 (mg/100g)</td>
<td>0,455</td>
<td>37,9%</td>
</tr> 
                                <tr class="sourceOf">
<td>Vitamin B2 (mg/100g)</td>
<td>0,195</td>
<td>15,0%</td>
</tr> 
                                <tr class="veryHighIn">
<td>Vitamin B3 (mg/100g)</td>
<td>12,8</td>
<td>80,5%</td>
</tr> 
                                <tr class="sourceOf">
<td>Vitamin B5 (mg/100g)</td>
<td>0,75</td>
<td>15,0%</td>
</tr> 
                                <tr class="veryHighIn">
<td>Vitamin B6 (mg/100g)</td>
<td>5,1</td>
<td>301,0%</td>
</tr> 
                                <tr class="sourceOf">
<td>Vitamin B7 (mg/100g)</td>
<td>0,0045</td>
<td>15,0%</td>
</tr> 
                                <tr class="sourceOf">
<td>Vitamin B9 (mg/100g) [Folic Acid]</td>
<td>0,06</td>
<td>15,0%</td>
</tr> 
                                <tr class="highIn">
<td>Vitamin C (mg/100g)</td>
<td>20,5</td>
<td>20,7%</td>
</tr>

                              <tr class="veryHighIn">
<td>Vitamin D (mcg)</td>
<td>90</td>
<td>600,0%</td>
</tr>
                                                            <tr class="sourceOf">
<td>Vitamin E (mg/100g)</td>
<td>2,25</td>
<td>15,0%</td>
</tr>
                        </tbody>
                    </table>
                </div>
                <!-- Third Table -->
                <div class="col-md-4">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Nutrient</th>
                                <th>Total</th>
                                <th>% NRV</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
<td>Sodium (mg/100g)</td>
<td>1,43</td>
<td></td>
</tr>
                                 <tr>
<td>Calcium (mg/100g)</td>
<td>13,7</td>
<td>1,1%</td>
</tr>
                            <tr class="highIn">
<td>Iron (mg/100g)</td>
<td>9,2</td>
<td>51,3%</td>
</tr> 
                            <tr class="sourceOf">
<td>Magnesium (mg/100g)</td>
<td>144</td>
<td>27,1%</td>
</tr> 
                            <tr class="sourceOf">
<td>Selenium (mg/100g)</td>
<td>0,008</td>
<td>15,0%</td>
</tr> 
                            <tr class="highIn">
<td>Zinc (mg/100g)</td>
<td>3,7</td>
<td>33,9%</td>
</tr> 
                            <tr>
<td>Potassium (mg/100g)</td>
<td>342</td>
<td></td>
</tr> 
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

         <div class="content-container">
            <div class="image-container">
                <!-- Replace 'path/to/your/image.jpg' with your image path -->
                <img src="Images/VitaStartLogo.jpg" alt="logoImage" data-aos="fade-up" />
            </div>
            <div class="text-container" data-aos="fade-up">
                <p>Vitastart is made with the very best whole-grain Sorghum - a<br />powerhouse grain, packed full of the nutrients you need every day to<br />stay healthy.</p>
            </div>
        </div>
    </form>
    <style>
        .bottom-divider{
            border-bottom:solid 2px black;
            margin-bottom:10px;
        }
.sourceOf td{
    background-color:gold;
}
.highIn td{
    background-color:indianred;
}
.veryHighIn td{
    background-color:lightgreen;
}
.color-box.sourceOf{
        background-color:gold;
}
.color-box.highIn{
    background-color:indianred;
}
.color-box.veryHighIn{
    background-color:lightgreen;
}
.table th{
    background-color: #009879;
    color: white;
    text-align: left;
}
.table{
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: auto;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.table th,
.table td {
    padding: 12px 15px;
}
.table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.color-key .color-box {
    display: inline-block;
    width: 20px;
    height: 20px;
    margin-right: 5px;
    border: 1px solid #000; /* Adjust border color as needed */
}
  .content-container {
            display: flex;
            align-items: center; /* Aligns items vertically center */
            justify-content: center; /* Centers items horizontally */
        }

        .image-container img {
            max-width: 100%; /* Ensures the image is responsive */
            height: auto;
            position:relative;
            top:10px;
        }

        .text-container {
            padding: 15px;
            color:red;
            position:relative;
            top:40px;
        }
        h2{
            position:relative;
            left:460px;
        }
    </style>
    <script>AOS.init();</script>
</body>
</html>
