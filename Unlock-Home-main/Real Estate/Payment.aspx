<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Real_Estate.RazorpayCallBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <title>Payment</title>
   
</head>
<body>
     <form  id="form1" runat="server">
        <div class="container">
            <h1 runat="server" id="h1Message"></h1>
            <p runat="server" id="pTxnId"></p>
            <p runat="server" id="pOrderId"></p>
            <p>Click Hear To Home</p>
            <p><a class="btn btn-primary btn-lg" href="Home.aspx">Home</a></p>
        </div>
    </form>
</body>
</html>
