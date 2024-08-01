<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckPay.aspx.cs" Inherits="Real_Estate.CheckPay" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Razorpay Integration</title>
</head>
<body>
    <form id="paymentForm" runat="server">
        <div>
            <label for="amount">Amount:</label>
            <asp:TextBox type="text" ID="amount" placeholder="Enter Amount" runat="server" />
            <br />
            <input type="button" id="payButton" value="Pay Now" onclick="initiatePayment()" />
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script type="text/javascript">
        var razorpayOptions = {
            key: 'rzp_test_kLX7L8BYDbH8a2',
            amount: 0, // Amount in paisa
            name: 'You',
            description: 'Payment Description',
            image: 'https://example.com/logo.png',
            handler: function (response) {
                // Handle the payment success, you can make an AJAX request to your server to mark the payment as successful
                // response.razorpay_payment_id contains the payment ID
                alert('Payment Successful! Payment ID: ' + response.razorpay_payment_id);
            },
            prefill: {
                name: 'John Doe',
                email: 'john@example.com',
            },
            theme: {
                color: '#F37254'
            }
        };

        function initiatePayment() {
            var amount = parseFloat(document.getElementById('amount').value);
            razorpayOptions.amount = amount * 100; // Amount in paisa

            var rzp = new Razorpay(razorpayOptions);
            rzp.open();
        }
    </script>
</body>
</html>
