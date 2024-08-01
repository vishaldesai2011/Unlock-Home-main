<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookNow.aspx.cs" Inherits="Real_Estate.BookNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <style>
       /* .container{
            margin-left:20%;
            margin-right:20%;
        }*/
    </style>
</head>
<body>
    <form runat="server" id="form1">
    <div class="container">
        <center><h1>Book Property</h1></center>

  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <asp:TextBox runat="server" class="form-control" ID="InputName" placeholder="Enter Name"/>
  </div>

    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <asp:TextBox runat="server" class="form-control" ID="InputEmail" placeholder="Enter Email"></asp:TextBox>
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>

  <%--<div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <asp:TextBox runat="server" type="password" class="form-control" ID="InputPassword1" placeholder="Enter Password"/>
  </div>--%>

     <div class="form-group">
    <label for="exampleInputPassword1">Mobile Number</label>
    <asp:TextBox runat="server" class="form-control" ID="Contact" placeholder="Enter Mobile Number"/>
  </div>

    <div class="form-group">
    <label for="exampleInputPassword1">Amount</label>
    <asp:TextBox runat="server" class="form-control" ID="amount" placeholder="Amount" ReadOnly="True"/>
  </div>
  
  <asp:Button ID="Button1" Text="Pay Now" type="submit" class="btn btn-primary" runat="server" OnClick="Book_NOW"/>
</div>
        
     </form>  

<%--    <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
</body>
</html>
