<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verify.aspx.cs" Inherits="Real_Estate.Verify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

        body {
  margin: 0;
  font-family: "Poppins", sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  background: #282a36;
  height: 100vh;
  color: #fff;
}

.otp-field {
  display: flex;
}

.otp-field input {
  width: 24px;
  font-size: 32px;
  padding: 10px;
  text-align: center;
  border-radius: 5px;
  margin: 2px;
  border: 2px solid #55525c;
  background: #21232d;
  font-weight: bold;
  color: #fff;
  outline: none;
  transition: all 0.1s;
}

.otp-field input:focus {
  border: 2px solid #00B98E;
  /*box-shadow: 0 0 2px 2px #a527ff6a;*/
  box-shadow: 0 0 2px 2px #00B98E;

}

.disabled {
  opacity: 0.5;
}

.space {
  margin-right: 1rem !important;
}
#Button1{
    /*display:none;*/
    width:100px;
    margin-top:50px;
    margin-left:100px;
    font-size:20px;
    
    
}
#Button1:hover{
    /*display:none;*/
    width:100px;
    margin-top:50px;
    margin-left:100px;
    font-size:20px;
    border: 2px solid #55525c;
    background-color:#55525c;
    
    
}
    </style>
  <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Font Awesome CDN  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
        integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
        crossorigin="anonymous" />
    <!-- CSS -->
    <link rel="stylesheet" href="style.css"/>
    <title>OTP Field Form - Coding Torque</title>
</head>
<body>
    <p>OTP sent on ....<asp:Label ID="emails" runat="server" Text="Label"></asp:Label></p>
    <h1><asp:Label ID="LBL" runat="server" Text="Enter OTP"></asp:Label></h1>
    <div class="otp-field">
  <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" maxlength="1"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" maxlength="1"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" maxlength="1"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" maxlength="1"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" maxlength="1"></asp:TextBox>
        <asp:TextBox ID="last" runat="server" maxlength="1"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Sub" />
    </form>

</div>
        <div>
        </div>
    <script>
        const inputs = document.querySelectorAll(".otp-field input");

        inputs.forEach((input, index) => {
            input.dataset.index = index;
            input.addEventListener("keyup", handleOtp);
            input.addEventListener("paste", handleOnPasteOtp);
        });

        function handleOtp(e) {
            /**
             * <input type="text" 👉 maxlength="1" />
             * 👉 NOTE: On mobile devices `maxlength` property isn't supported,
             * So we to write our own logic to make it work. 🙂
             */
            const input = e.target;
            let value = input.value;
            let isValidInput = value.match(/[0-9a-z]/gi);
            input.value = "";
            input.value = isValidInput ? value[0] : "";

            let fieldIndex = input.dataset.index;
            if (fieldIndex < inputs.length - 1 && isValidInput) {
                input.nextElementSibling.focus();
            }

            if (e.key === "Backspace" && fieldIndex > 0) {
                input.previousElementSibling.focus();
            }

            if (fieldIndex == inputs.length - 1 && isValidInput) {
                //submit();
                submit1();
            }
        }

        function handleOnPasteOtp(e) {
            const data = e.clipboardData.getData("text");
            const value = data.split("");
            if (value.length === inputs.length) {
                inputs.forEach((input, index) => (input.value = value[index]));
                //submit();
                submit1();
            }
        }

        function submit() {
            console.log("Submitting...");
            // 👇 Entered OTP
            let otp = "";
            inputs.forEach((input) => {
                otp += input.value;
                input.disabled = true;
                input.classList.add("disabled");
            });
            console.log(otp);
            // 👉 Call API below
        }
        function submit1() {
            alert("submit");
            // 👉 Call API below
        }
        
            function disableBack() {
                window.history.forward();
        }
   
    </script>
</body>
</html>
