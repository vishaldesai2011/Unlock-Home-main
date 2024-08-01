<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Real_Estate.Test" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Test</title>
    </head>
<body>
    <form id="form1" runat="server">
    
          <asp:DropDownList ID="name" runat="server" onmouseout="getValue()">
          <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"/>
          <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
           
          </asp:DropDownList>
    <asp:DropDownList ID="list" runat="server">
         <asp:ListItem Text="Select Value"/>
           
    </asp:DropDownList>
        </form>
    <script>
        const statesAndCities = {
            "Andhra Pradesh": ["Hyderabad", "Visakhapatnam", "Vijayawada", "Guntur", "Nellore"],
            "Arunachal Pradesh": ["Itanagar", "Naharlagun", "Tawang", "Bomdila", "Aalo"]
        };
        function citys(city){
            
           
            var select = document.getElementById("list");
            //var options = ["1", "2", "3", "4", "5"];
            var options = statesAndCities[city];
            for (var i = 0; i < options.length; i++) {
                var opt = options[i];
                var el = document.createElement("option");
                el.textContent = opt;
                el.value = opt;
                select.appendChild(el);
            }
            }

        function getValue() {
            // Get the dropdown element by its ID
            const dropdown = document.getElementById("name");

            // Get the selected value
            const selectedValue = dropdown.value;

            // Display the selected value
            //alert("Selected Value: " + selectedValue);
            let city = selectedValue;
            //alert(city);
            citys(city);
        }

    </script>
</body>
</html>
