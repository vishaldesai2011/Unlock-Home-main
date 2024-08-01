<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetpassword.aspx.cs" Inherits="Real_Estate.resetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Password</title>
    <style>
         body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width:300px;
        }

        h2 {
            color: #333;
        }

        .form-group {
            margin: 15px 0;
            margin-right:15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            background-color: #00dfc0;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input{
            margin-right:10px;
        }

        .btn:hover {
            background-color: #0056b3;
        }
       
    </style>
</head>
<body>
     <div class="container">
        <h2>Reset Password </h2>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="otp">OTP:</label>
                <asp:TextBox type="text" runat="server" ID="otp" name="otp" />
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox type="password" runat="server" ID="password" name="password" />
            </div>
            <div class="form-group">
                <label for="confirm">Confirm Password:</label>
                <asp:TextBox type="password" runat="server" ID="confirm" name="confirm" />
            </div>
            <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Reset" OnClick="change"/><br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="otp"
                    InitialValue=""
                    ErrorMessage="Otp is required."
                    ForeColor="Red"
                    Display="Dynamic">

             </asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="password"
                    InitialValue=""
                    ErrorMessage="Password is required."
                    ForeColor="Red"
                    Display="Dynamic">

             </asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="confirm"
                    InitialValue=""
                    ErrorMessage="Confirm-Password is required."
                    ForeColor="Red"
                    Display="Dynamic">

             </asp:RequiredFieldValidator><br />
            <asp:CompareValidator ID="cvPasswordMatch" runat="server"
                 ControlToValidate="password"
                 ControlToCompare="confirm"
                 Operator="Equal"
                 ForeColor="Red"
                 ErrorMessage="Passwords do not match." />
        </form>
    </div>
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
</body>
</html>
