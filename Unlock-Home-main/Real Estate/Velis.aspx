<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Velis.aspx.cs" Inherits="Real_Estate.Velis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #lbl{
            display:none;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <asp:Button ID="SendButton" runat="server" Text="Send OTP" OnClick="Click" />

        </div>
    </form>
            <asp:Label ID="lbl" runat="server" Text="verify"></asp:Label>
    <input id="otp" />
    <button onclick="varify()">Verify</button>
    <script>
        function varify() {
            var lbl = document.getElementById("lbl").innerHTML;
            var otp = document.getElementById("otp").value;
            if (lbl == otp) {
                alert("success");
            }
            else {
                alert("fail"+lbl);

            }
        }
    </script>
</body>
</html>
