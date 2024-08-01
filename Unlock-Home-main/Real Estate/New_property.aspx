<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_property.aspx.cs" Inherits="Real_Estate.New_property" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Unlock Home</title>
    <style>
        .h1{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        .table{

        }
        .forms{
            width:340px;
            height:auto;
            background-color:ghostwhite;
            display:flex;
            justify-content:center;
            align-items:center;
            margin-left:2%;
            border:2px solid gray;
            

        }
        .dropdown{
            width:250px;
            height:30px;
        }
       
        .p{
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .input{
            width:250px;
            height:30px;

        }
        .th{
             width:250px;
            height:30px;
            font-size:30px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding-top:15px;
            padding-bottom:15px;
        }
        h1{
            text-align:center;
            /*display:none;*/
        }
        #Btn1{
            width:150px;
            height:35px;
            background-color:black;
            color:white;
            border:none;
            cursor:pointer;
        }
        #Btn1:hover{
            width:150px;
            height:35px;
            background-color:white;
            color:black;
            border:1px solid black;
            cursor:pointer;
        }
         @media only screen and (max-width: 570px) {
          .forms{
              width:auto;
          }
          
      }
    </style>
</head>
<body>
    <h1 class="h1">Add New Property</h1>
    <div class="forms">
       
    <form id="form1" runat="server">
        <table>
            <tr><td class="p">Property Owner Name</td></tr>
            <tr><td><asp:TextBox ID="Owner" CssClass="input" runat="server" placeholder="Property Owner Name" autocomplete="off"></asp:TextBox></td></tr>

             <tr><td class="p">Owner Contact Number</td></tr>
            <tr><td><asp:TextBox ID="contact" CssClass="input" runat="server" placeholder="Owner Contact Number" autocomplete="off"></asp:TextBox></td></tr>
            
            <tr><td class="p">Property Name</td></tr>
            <tr><td><asp:TextBox ID="prop_name" CssClass="input" runat="server" placeholder="Property Name" autocomplete="off"></asp:TextBox></td></tr>
            
            <tr><td class="p">Property Type</td></tr>
            <tr><td>
            <asp:DropDownList ID="type" class="dropdown" runat="server">
            <asp:ListItem Text="Sell" Value="Sell" />
            <asp:ListItem Text="Rent" Value="Rent" />
            </asp:DropDownList></td></tr>

            <tr><td class="p">Property Category</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="category" runat="server">
            <asp:ListItem Text="Flat" Value="Flat" />
            <asp:ListItem Text="Villa" Value="Villa" />
            <asp:ListItem Text="Farm House" Value="Farm House" />
            </asp:DropDownList></td></tr>

            <tr><td class="p">Property Price</td></tr>
            <tr><td><asp:TextBox ID="price" CssClass="input" runat="server" placeholder="Property Price" autocomplete="off"></asp:TextBox></td></tr>

             <tr><td class="p">State</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="list" runat="server" onmouseout="getValue()">
            <%--<asp:ListItem Text="Andhra Pradesh" Value="State"/>--%>
            </asp:DropDownList></td></tr>

             <tr><td class="p">City</td></tr>
            <tr><td><asp:DropDownList class="dropdown" ID="name" runat="server" onmouseover="setvalue">
            <%--<asp:ListItem Text="Select City" Disabled="true" Value="City"/>--%>
            </asp:DropDownList></td></tr>

            <tr><td class="p">Property Location</td></tr>
            <tr><td><asp:TextBox ID="location" CssClass="input" runat="server" placeholder="Property Location" autocomplete="off"></asp:TextBox></td></tr>

            <tr><td class="p">Bedroom</td></tr>
            <tr><td><asp:TextBox ID="bedroom" CssClass="input" runat="server" placeholder="Bedroom" autocomplete="off"></asp:TextBox></td></tr>

            <tr><td class="p">Furniture</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="fur" runat="server">
            <asp:ListItem Text="Furnished" Value="furnished" />
            <asp:ListItem Text="Semi-Furnished" Value="semi-furnished" />
            <asp:ListItem Text="Without-Furniture" Value="without-furniture" />
            </asp:DropDownList></td></tr>

             <tr><td class="p">Size</td></tr>
            <tr><td><asp:TextBox ID="size" CssClass="input" runat="server" placeholder="Size" autocomplete="off"></asp:TextBox></td></tr>

             <tr><td class="p">Bathroom</td></tr>
            <tr><td><asp:TextBox ID="bathroom" CssClass="input" runat="server" placeholder="Bathroom" autocomplete="off"></asp:TextBox></td></tr>

             <tr><td class="p">Floor</td></tr>
            <tr><td><asp:TextBox ID="floor" CssClass="input" runat="server" placeholder="Floor" autocomplete="off"></asp:TextBox></td></tr>

             <tr><td class="p">Construction Year</td></tr>
            <tr><td><asp:TextBox ID="c_year" CssClass="input" runat="server" placeholder="Construction Year" autocomplete="off"></asp:TextBox></td></tr>

            <tr><td class="p">Renovation Year</td></tr>
            <tr><td><asp:TextBox ID="r_year" CssClass="input" runat="server" placeholder="Renovation Year" autocomplete="off"></asp:TextBox></td></tr>

            <tr><th class="th">Property Utility</th></tr>
           
            <tr><td class="p">Air Conditioner</td></tr>
            <tr><td><asp:TextBox ID="ac" CssClass="input" runat="server" placeholder="Air Conditioner" autocomplete="off"></asp:TextBox></td></tr>
           
            <tr><td class="p">Intercom</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="intercom" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

            <tr><td class="p">Elevator</td></tr>
            <tr><td><asp:TextBox ID="elecator" CssClass="input" runat="server" placeholder="Elevator" autocomplete="off"></asp:TextBox></td></tr>
           
            <tr><td class="p">Ventilation</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="ventilation" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

             <tr><td class="p">Wifi</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="wifi" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>
            
            <tr><td class="p">Fireplace</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="fireplace" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

             <tr><td class="p">Cable TV</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="cable" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

            <tr><th class="th">Outdoor Features</th></tr>
            <tr><td class="p">Parking</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="parking" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

            
            <tr><td class="p">Garden</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="garden" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

             <tr><td class="p">Swimming Pool</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="swimmingpool" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

            <tr><td class="p">CCTV</td></tr>
            <tr><td><asp:TextBox ID="cctv" CssClass="input" runat="server" placeholder="No of CCTV" autocomplete="off"></asp:TextBox></td></tr>

            <tr><td class="p">Security</td></tr>
            <tr><td><asp:TextBox ID="security" CssClass="input" runat="server" placeholder="Security" autocomplete="off"></asp:TextBox></td></tr>

            <tr><td class="p">Club House</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="club_house" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

            <tr><td class="p">Gym</td></tr>
            <tr><td><asp:DropDownList  class="dropdown"  ID="gym" runat="server">
            <asp:ListItem Text="Yes" Value="Yes" />
            <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList></td></tr>

            <tr><th class="th">What's nearby</th></tr>

             <tr><td class="p">School</td></tr>
            <tr><td><asp:TextBox ID="school" CssClass="input" type="number" runat="server" placeholder="Ex :- 0.7 , 1" autocomplete="off"></asp:TextBox></td></tr>
           
             <tr><td class="p">Hospital,medical</td></tr>
             <tr><td><asp:TextBox ID="hospital" CssClass="input" type="number" runat="server" placeholder="Ex :- 0.7 , 1" autocomplete="off"></asp:TextBox></td></tr>
           
             <tr><td class="p">Bus station</td></tr>
             <tr><td><asp:TextBox ID="metro" CssClass="input" type="number" runat="server" placeholder="Ex :- 0.7 , 1" autocomplete="off"></asp:TextBox></td></tr>
           
             <tr><td class="p">Univercity</td></tr>
             <tr><td><asp:TextBox ID="univercity" CssClass="input" type="number" runat="server" placeholder="Ex :- 0.7 , 1" autocomplete="off"></asp:TextBox></td></tr>
           
             <tr><td class="p">Gym</td></tr>
             <tr><td><asp:TextBox ID="Gym_distance" CssClass="input" type="number" runat="server" placeholder="Ex :- 0.7 , 1" autocomplete="off"></asp:TextBox></td></tr>
           
            <tr><td class="p">Market</td></tr>
             <tr><td><asp:TextBox ID="market" CssClass="input" type="number" runat="server" placeholder="Ex :- 0.7 , 1" autocomplete="off"></asp:TextBox></td></tr>
           
             <tr><td class="p">City Mall</td></tr>
             <tr><td><asp:TextBox ID="city_mall" CssClass="input" type="number" runat="server" placeholder="Ex :- 0.7 , 1" autocomplete="off"></asp:TextBox></td></tr>

             <tr><th class="th">Upload Images</th></tr>

              <tr><td class="p">Poster Image</td></tr>
             <tr><td><asp:FileUpload ID="img1" runat="server" /></td></tr>

             <tr><td class="p">Image 2</td></tr>
             <tr><td><asp:FileUpload ID="img2" runat="server" /></td></tr>

             <tr><td class="p">Image 3</td></tr>
             <tr><td><asp:FileUpload ID="img3" runat="server" /></td></tr>

             <tr><td class="p">Image 4</td></tr>
             <tr><td><asp:FileUpload ID="img4" runat="server" /></td></tr>

             <tr><td class="p">Image 5</td></tr>
             <tr><td><asp:FileUpload ID="img5" runat="server" /></td></tr>

             <tr><td class="p">Image 6</td></tr>
             <tr><td><asp:FileUpload ID="img6" runat="server" /></td></tr>

             <tr><td class="p">Image 7</td></tr>
             <tr><td><asp:FileUpload ID="img7" runat="server" /></td></tr>

             <tr><td class="p">Image 8</td></tr>
             <tr><td><asp:FileUpload ID="img8" runat="server" /></td></tr>

             <tr><td class="p">Image 9</td></tr>
             <tr><td><asp:FileUpload ID="img9" runat="server" /></td></tr>

            <tr><td class="p">Image 10</td></tr>
             <tr><td><asp:FileUpload ID="img10" runat="server" /></td></tr>

             <tr><td class="p">Plan Image</td></tr>
             <tr><td><asp:FileUpload ID="img11" runat="server" /></td></tr>
           
             <tr><th class="th"><asp:Button ID="Btn1" runat="server" Text="Submit" OnClick="Add" /></th></tr>

        </table>
        </form>
         
        </div>

    <script src="css1/state.js"></script>
    <script src="css1/citys.js"></script>

    <script>
        function get() {
            var comboBox = document.getElementById("name"); // Get the ComboBox element by its ID.
            var selectedValue = comboBox.value; // Get the selected value.
            alert(selectedValue);
        }

    </script>

</body>
</html>
