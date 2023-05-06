<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="JConverter.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>JConverter</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
         <link rel="stylesheet"  href="StyleSheet1.css"/>
         
     <style type="text/css">
                 
         
         
                                  
         .auto-style1 {
             margin-left: 161px;
             margin-top: 5px;
         }
         .bg-custom {
              background-color: #5F264A; 
         }
            .bg-custom1 {
              background-color:#B0A4A4; 
         }      
         
         
                                  
         .auto-style2 {
             margin-top: 5px;
         }
           .auto-style3 {
             background-color:#B0A4A4; 
         }
         
         
                                  
         </style>



     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
       
  

          
</head>

<body>
   
     <form id="form1" runat="server" style="background-color:aliceblue"  >
         <div class="container bg-custom"> 
          <div class="row">


              <!-- lable JConverter -->
               <div class=" text-center ">
                   <p style="font-size: xx-large; font-family: Arial; font-weight: bold; color: #FFFFFF;">JConverter</p>
                   <asp:Menu ID="MainMenu" runat="server" Orientation="Horizontal" BorderColor="WindowFrame">
    <Items>
        <asp:MenuItem Text="Home" NavigateUrl="~/Default.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Products">
      
        </asp:MenuItem>
        <asp:MenuItem Text="Contact" NavigateUrl="~/Contact.aspx"></asp:MenuItem>
    </Items>
</asp:Menu>

            </div>

          </div>
             <!-- la ligne des element -->
             <div class="row bg-custom1 ">

                  <div class="col-xl-6 col-lg-7 col-md-8 col-sm-9 text-center">
                      <p class="animate__animated animate__bounce" style="font-family: Arial; font-size: 14px; font-weight: lighter; text-transform: capitalize; color: #990099; ">Choose your unit and enjoy to convert it</p>

                      <!-- div des boutons -->
                         <div class="pb-10 auto-style3">
                         
                             <td class="auto-style3">
                                 <asp:Button ID="poid" runat="server" Text="Weight"  BackColor="#660066" ForeColor="White" OnClick="Button3_Click" Height="30px" Width="140px" BorderColor="#9900CC" />
                                 <asp:Button ID="temperature" runat="server" Text="Temperature" BackColor="#660066"  Style="margin-left: 20px" BorderColor="#9900CC" Width="140px" ForeColor="White" OnClick="temperature_Click" />
                                 <asp:Button ID="btnLong" runat="server" Text="Lenght"  BackColor="#660066" ForeColor="White"  Style="margin-left: 20px" OnClick="long_Click" BorderColor="#9900CC" Width="140px" />
                             </td>
                         
                     </div>
                      <!-- div des texbox -->
                       <div class="pt -10" >

                         <td>
                             <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="170px" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true" CssClass="auto-style2"></asp:TextBox>
                             <asp:TextBox ID="TextBox2" runat="server" Height="25px"  Width="170px" AutoPostBack="true" CssClass="auto-style1"></asp:TextBox>

                         </td>

                     </div>
                       <!-- div des label from to -->
                      <div>
                         <tr>
                             
  
                             <td>
                                 <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>
                                 <asp:Label ID="Label2" runat="server" Text="To" Style="margin-left: 250px"></asp:Label>
                             </td>
                         </tr>
                     </div>
                       <!-- div des listbox -->
                      <div  >
                         <tr>
                             <td>
                                 <asp:ListBox ID="ListBox1" runat="server" Width="170px" Height="150px" AutoPostBack="true">
                                     <asp:ListItem>Gram</asp:ListItem>
                                     <asp:ListItem>Kilogram</asp:ListItem>
                                     <asp:ListItem>Milligram</asp:ListItem>
                                     <asp:ListItem>Metric ton</asp:ListItem>
                                     <asp:ListItem>Long Ton</asp:ListItem>
                                     <asp:ListItem>Short Ton</asp:ListItem>
                                     <asp:ListItem>Pound</asp:ListItem>
                                     <asp:ListItem>Ounce</asp:ListItem>
                                     <asp:ListItem>Carrat</asp:ListItem>
                                     <asp:ListItem>Atomic mass unit</asp:ListItem>

                                 </asp:ListBox>

                                 <asp:ListBox ID="ListBox2" runat="server" Width="170px" Height="150px"  Style="margin-left: 161px" AutoPostBack="true" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged">
                                     <asp:ListItem>Gram</asp:ListItem>
                                     <asp:ListItem>Kilogram</asp:ListItem>
                                     <asp:ListItem>Milligram</asp:ListItem>
                                     <asp:ListItem>Metric ton</asp:ListItem>
                                     <asp:ListItem>Long Ton</asp:ListItem>
                                     <asp:ListItem>Short Ton</asp:ListItem>
                                     <asp:ListItem>Pound</asp:ListItem>
                                     <asp:ListItem>Ounce</asp:ListItem>
                                     <asp:ListItem>Carrat</asp:ListItem>
                                     <asp:ListItem>Atomic mass unit</asp:ListItem>
                                 </asp:ListBox>

                             </td>

                         </tr>
                     </div>

                          <div><!-- div imag -->
                              <td>
                                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pic/image2.jpg" Height="140px" Width="170px" OnClick="ImageButton2_Click" />
                                   <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pic/image3.jpg" Height="140px" Width="168px"  Style="margin-left: 161px"/>

                              </td>
                  
                 </div>

                         </div> <!-- fin de la colonne des element -->
             
           <div class="col-xl-6 col-lg-5 col-md-4 col-sm-3 text-center">
                 <p>"Welcome to our unit converter! To get started, simply choose your category, and select your input and output units, enter a value, and hit convert. If you're unsure which units to choose, don't worry - we've provided a list of common units for each category. And if you run into any issues or have questions, be sure to check out our FAQ or contact us for support. We hope you find our app easy to use and helpful for all your conversion needs!"</p>
               <div>
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pic/image1.jpg" Height="514px" Width="366px" />
               </div>
              
           </div>

             </div>

         </div>
         
           
 

        
    </form>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
     <script type="text/javascript">

         function conversion(uniteSource, uniteCible, valeur) {
             let resultat = 0.0;

             switch (uniteSource) {
                 case "Gram":
                     switch (uniteCible) {
                         case "Kilogram":
                             resultat = valeur / 1000;
                             break;
                         case "Milligram":
                             resultat = valeur * 1000;
                             break;
                         case "Metric ton":
                             resultat = valeur / 1000000;
                             break;
                         case "Long Ton":
                             resultat = valeur / 1016.05;
                             break;
                         case "Short Ton":
                             resultat = valeur / 907.185;
                             break;
                         case "Pound":
                             resultat = valeur / 453.592;
                             break;
                         case "Ounce":
                             resultat = valeur / 28.3495;
                             break;
                         case "Carrat":
                             resultat = valeur / 0.2;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur / 6.02214129E+23;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }

                     break;
                 case "Kilogram":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 1000;
                             break;
                         case "Milligram":
                             resultat = valeur * 1000000;
                             break;
                         case "Metric ton":
                             resultat = valeur / 1000;
                             break;
                         case "Long Ton":
                             resultat = valeur / 1016.05 * 1000;
                             break;
                         case "Short Ton":
                             resultat = valeur / 907.185 * 1000;
                             break;
                         case "Pound":
                             resultat = valeur / 0.453592;
                             break;
                         case "Ounce":
                             resultat = valeur / 0.0283495;
                             break;
                         case "Carrat":
                             resultat = valeur / 0.0002;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur / 6.02214129E+26;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Milligram":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur / 1000;
                             break;
                         case "Kilogram":
                             resultat = valeur / 1000000;
                             break;
                         case "Metric ton":
                             resultat = valeur / 1000000000;
                             break;
                         case "Long Ton":
                             resultat = valeur / 1.01605E+9;
                             break;
                         case "Short Ton":
                             resultat = valeur / 907185000;
                             break;
                         case "Pound":
                             resultat = valeur / 453592 / 1000;
                             break;
                         case "Ounce":
                             resultat = valeur / 28349.5;
                             break;
                         case "Carrat":
                             resultat = valeur / 200;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur / 6.02214129E+26 * 1000000;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Metric ton":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 1000000;
                             break;
                         case "Kilogram":
                             resultat = valeur * 1000;
                             break;
                         case "Milligram":
                             resultat = valeur * 1000000000;
                             break;
                         case "Long Ton":
                             resultat = valeur / 1.0160469088;
                             break;
                         case "Short Ton":
                             resultat = valeur / 0.90718474;
                             break;
                         case "Pound":
                             resultat = valeur * 2204.6226218;
                             break;
                         case "Ounce":
                             resultat = valeur * 35273.96194958;
                             break;
                         case "Carrat":
                             resultat = valeur * 5000000000;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur * 6.0221367e+29;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Long Ton":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 1016046.9088;
                             break;
                         case "Kilogram":
                             resultat = valeur * 1016.0469088;
                             break;
                         case "Milligram":
                             resultat = valeur * 1.0160469088e+9;
                             break;
                         case "Metric ton":
                             resultat = valeur / 1016.0469088;
                             break;
                         case "Short Ton":
                             resultat = valeur * 1.12;
                             break;
                         case "Pound":
                             resultat = valeur * 2240;
                             break;
                         case "Ounce":
                             resultat = valeur * 35840;
                             break;
                         case "Carrat":
                             resultat = valeur * 5.08023454e+9;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur * 3.05077568e+29;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Short Ton":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 907184.74;
                             break;
                         case "Kilogram":
                             resultat = valeur * 907.18474;
                             break;
                         case "Milligram":
                             resultat = valeur * 9.0718474e+8;
                             break;
                         case "Metric ton":
                             resultat = valeur / 1.10231131;
                             break;
                         case "Long Ton":
                             resultat = valeur / 1.12;
                             break;
                         case "Pound":
                             resultat = valeur * 2000;
                             break;
                         case "Ounce":
                             resultat = valeur * 32000;
                             break;
                         case "Carrat":
                             resultat = valeur * 4.5359237e+9;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur * 2.72102672e+29;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Pound":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 453.592;
                             break;
                         case "Kilogram":
                             resultat = valeur / 2.20462;
                             break;
                         case "Milligram":
                             resultat = valeur * 453592.37;
                             break;
                         case "Metric ton":
                             resultat = valeur / 2204.6226218;
                             break;
                         case "Long Ton":
                             resultat = valeur / 2240;
                             break;
                         case "Short Ton":
                             resultat = valeur / 2000;
                             break;
                         case "Ounce":
                             resultat = valeur * 16;
                             break;
                         case "Carrat":
                             resultat = valeur * 2267.96185;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur * 1.35833151e+26;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;

                 case "Ounce":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 28.3495;
                             break;
                         case "Kilogram":
                             resultat = valeur * 0.0283495;
                             break;
                         case "Milligram":
                             resultat = valeur * 28349.5;
                             break;
                         case "Metric ton":
                             resultat = valeur / 35273.96194958;
                             break;
                         case "Long Ton":
                             resultat = valeur / 35840;
                             break;
                         case "Short Ton":
                             resultat = valeur / 32000;
                             break;
                         case "Carrat":
                             resultat = valeur * 141.7476;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur * 5.66053774e+23;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;

                 case "Carrat":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 0.2;
                             break;
                         case "Kilogram":
                             resultat = valeur * 0.0002;
                             break;
                         case "Milligram":
                             resultat = valeur * 200;
                             break;
                         case "Metric ton":
                             resultat = valeur * 2e-7;
                             break;
                         case "Long Ton":
                             resultat = valeur * 1.57473e-7;
                             break;
                         case "Short Ton":
                             resultat = valeur * 2.20462e-7;
                             break;
                         case "Carrat":
                             resultat = valeur;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur * 3.82424817e+20;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Atomic mass unit":
                     switch (uniteCible) {
                         case "Gram":
                             resultat = valeur * 1.66054e-24;
                             break;
                         case "Kilogram":
                             resultat = valeur * 1.66054e-27;
                             break;
                         case "Milligram":
                             resultat = valeur * 1.66054e-21;
                             break;
                         case "Metric ton":
                             resultat = valeur * 1.66054e-30;
                             break;
                         case "Long Ton":
                             resultat = valeur * 1.45704e-30;
                             break;
                         case "Short Ton":
                             resultat = valeur * 1.8288e-30;
                             break;
                         case "Carrat":
                             resultat = valeur / 3.239e+17;
                             break;
                         case "Ounce":
                             resultat = valeur / 5.857e+23;
                             break;
                         case "Pound":
                             resultat = valeur / 9.317e+24;
                             break;
                         case "Atomic mass unit":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Celsius":
                     switch (uniteCible) {
                         case "Kelvin":
                             resultat = valeur + 273.15;
                             break;
                         case "Fahrenheit":
                             resultat = (valeur * 9 / 5) + 32;
                             break;
                         case "Celsius":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Kelvin":
                     switch (uniteCible) {
                         case "Celsius":
                             resultat = valeur - 273.15;
                             break;
                         case "Fahrenheit":
                             resultat = (valeur - 273.15) * 9 / 5 + 32;
                             break;
                         case "Kelvin":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Fahrenheit":
                     switch (uniteCible) {
                         case "Celsius":
                             resultat = (valeur - 32) * 5 / 9;
                             break;
                         case "Kelvin":
                             resultat = (valeur - 32) * 5 / 9 + 273.15;
                             break;
                         case "Fahrenheit":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Meter":
                     switch (uniteCible) {
                         case "Kilometer":
                             resultat = valeur / 1000;
                             break;
                         case "Centimeter":
                             resultat = valeur * 100;
                             break;
                         case "Millimeter":
                             resultat = valeur * 1000;
                             break;
                         case "Mile":
                             resultat = valeur / 1609.344;
                             break;
                         case "Foot":
                             resultat = valeur * 3.2808;
                             break;
                         case "Inch":
                             resultat = valeur * 39.370;
                             break;
                         case "Meter":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Kilometer":
                     switch (uniteCible) {
                         case "Meter":
                             resultat = valeur * 1000;
                             break;
                         case "Centimeter":
                             resultat = valeur * 100000;
                             break;
                         case "Millimeter":
                             resultat = valeur * 1e+6;
                             break;
                         case "Mile":
                             resultat = valeur / 1.609;
                             break;
                         case "Foot":
                             resultat = valeur * 3280.8;
                             break;
                         case "Inch":
                             resultat = valeur * 39370;
                             break;
                         case "Kilometer":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Centimeter":
                     switch (uniteCible) {
                         case "Meter":
                             resultat = valeur / 100;
                             break;
                         case "Kilometer":
                             resultat = valeur / 100000;
                             break;
                         case "Millimeter":
                             resultat = valeur * 10;
                             break;
                         case "Mile":
                             resultat = valeur / 160934.4;
                             break;
                         case "Foot":
                             resultat = valeur / 30.48;
                             break;
                         case "Inch":
                             resultat = valeur / 2.54;
                             break;
                         case "Centimeter":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Millimeter":
                     switch (uniteCible) {
                         case "Meter":
                             resultat = valeur / 1000;
                             break;
                         case "Kilometer":
                             resultat = valeur / 1e+6;
                             break;
                         case "Centimeter":
                             resultat = valeur / 10;
                             break;
                         case "Mile":
                             resultat = valeur / 1.609e+6;
                             break;
                         case "Foot":
                             resultat = valeur / 305;
                             break;
                         case "Inch":
                             resultat = valeur / 25.4;
                             break;
                         case "Millimeter":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Mile":
                     switch (uniteCible) {
                         case "Kilometer":
                             resultat = valeur * 1.609344;
                             break;
                         case "Centimeter":
                             resultat = valeur * 160934.4;
                             break;
                         case "Millimeter":
                             resultat = valeur * 1.609344e+6;
                             break;
                         case "Meter":
                             resultat = valeur * 1609.344;
                             break;
                         case "Foot":
                             resultat = valeur * 5280;
                             break;
                         case "Inch":
                             resultat = valeur * 63360;
                             break;
                         case "Mile":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Foot":
                     switch (uniteCible) {
                         case "Kilometer":
                             resultat = valeur * 0.0003048;
                             break;
                         case "Centimeter":
                             resultat = valeur * 30.48;
                             break;
                         case "Millimeter":
                             resultat = valeur * 304.8;
                             break;
                         case "Meter":
                             resultat = valeur * 0.3048;
                             break;
                         case "Mile":
                             resultat = valeur * 0.000189393939;
                             break;
                         case "Inch":
                             resultat = valeur * 12;
                             break;
                         case "Foot":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;
                 case "Inch":
                     switch (uniteCible) {
                         case "Kilometer":
                             resultat = valeur * 2.54e-5;
                             break;
                         case "Centimeter":
                             resultat = valeur * 2.54;
                             break;
                         case "Millimeter":
                             resultat = valeur * 25.4;
                             break;
                         case "Meter":
                             resultat = valeur * 0.0254;
                             break;
                         case "Mile":
                             resultat = valeur * 1.5783e-5;
                             break;
                         case "Foot":
                             resultat = valeur * 0.0833333333;
                             break;
                         case "Inch":
                             resultat = valeur;
                             break;
                         default:
                             resultat = valeur;
                             break;
                     }
                     break;



             }
             return resultat;
         
            
            
           
        }



      
     </script>
    
    <script type="text/javascript">
        function calculer() {

            var valeur = document.getElementById('<%=TextBox1.ClientID%>').value;
             var uniteSource = $("#<%=ListBox1.ClientID%>").val();
             var uniteCible = $("#<%=ListBox2.ClientID%>").val();

             var resultat = conversion(uniteSource, uniteCible, valeur)

             document.getElementById('<%=TextBox2.ClientID%>').value = resultat;

            
         }
       

         // appeler la fonction calculer lorsqu'on change la valeur de TextBox1
         
             document.getElementById('<%=TextBox1.ClientID%>').addEventListener("input", calculer);
         document.getElementById('<%= ListBox1.ClientID %>').addEventListener("change", calculer);
         document.getElementById('<%= ListBox2.ClientID %>').addEventListener("change", calculer);


        var poid = document.getElementById("poid");

        poid.addEventListener("click", function () {
            poid.style.backgroundColor = "#B0A4A4";
        });


    </script>
  

  

</body>
</html>
