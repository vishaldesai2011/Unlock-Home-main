<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Real_Estate.unlockhome.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
     <style>
         @keyframes slide {
  0% {margin-left:100px; }
  /* 50% {margin-left:200px;}
  75% {margin-left:400px;} */
  100% {margin-left:550px; }
}
          .input{
             /*width:250px;
             height:35px;
             margin-top:20px;*/
         }
         .marging{
             margin-top:50px;
             align-items:center;
         }
         .btn1{
             margin-top:20px;
             width: 180px;
             height:40px;
             background-color:black;
            color:aliceblue;
            display:none;

         }
         .container{
             box-shadow:5px 1px 2px 2px gray;
             /*background-color:rgb(203, 220, 203,0.2);*/
             background-color:#E0E0E0;
             width:450px;
             animation:slide;
             animation-duration: 1s;
             height:auto;
             border-radius:20px;
         }
         .h1{
             color:#00B98E;
         }
         body{
             /*background-image:url(https://wallpaperaccess.com/full/1456369.jpg);*/
             background-color:white ;
              background-size: 100%;
             background-repeat: no-repeat;
         }
         label{
             color:#00B98E;
         }
    </style>
</head>
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
<body>
   <div class="container  marging">
       <p class="h1 text-center">Registration</p>

    <form id="form4" runat="server">
        <div class="form-group text-led">
              <label for="exampleInputEmail1" id="first">First Name</label>
            <asp:TextBox ID="TextBox1" CssClass="input form-control" runat="server" placeholder="Enter First Name"></asp:TextBox><br />
            </div>
        <div class="form-group">
             <label for="exampleInputEmail1" id="last">Last Name</label>
            <asp:TextBox ID="TextBox2" CssClass="input form-control" runat="server" placeholder="Enter Last Name"></asp:TextBox><br />
            </div>
        <div class="form-group">
             <label for="exampleInputEmail1" id="email">Email</label>
              <asp:TextBox ID="TextBox3" CssClass="input form-control" runat="server" placeholder="Enter Email" ReadOnly="True"></asp:TextBox><br />
            </div>
         <div class="form-group">
             <label for="exampleInputEmail1" id="contact">Mobile Number</label>
              <asp:TextBox ID="txtMobileNumber" CssClass="input form-control" runat="server" placeholder="Enter Mobile Number"></asp:TextBox><br />
            </div>
        <div class="form-group">
             <label for="exampleInputEmail1" id="uname">UserName</label>
            <asp:TextBox ID="TextBox4" CssClass="input form-control" runat="server" placeholder="Enter UserName "></asp:TextBox><br />
            </div>
        <div class="form-group">
             <label for="exampleInputEmail1" id="pass1">Password</label>
            <asp:TextBox ID="TextBox5" CssClass="input form-control" runat="server" Type="password" placeholder="Enter Password"></asp:TextBox><br />
            </div>
         <div class="form-group">
             <label for="exampleInputEmail1" id="pass2">Confirm Password</label>
            <asp:TextBox ID="TextBox6" CssClass="input form-control" runat="server" Type="password" placeholder="Confirm Password"></asp:TextBox><br />
            </div>
        <asp:RegularExpressionValidator 
    ID="MobileNumberValidator" 
    runat="server" 
    ControlToValidate="txtMobileNumber" 
    ValidationExpression="^\d{10}$" 
    ErrorMessage="Invalid mobile number format. Please use xxx-xxx-xxxx format." 
    Display="Dynamic" />
          <center> <asp:Button ID="Button1" CssClass="btn1 btn btn-outline-danger" runat="server" Text="Submit" OnClick="Button1_Clicked" /></center>

             <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>     
    </form>

        </div>

        <script>
            var a = document.getElementById("TextBox1");
            var b = document.getElementById("TextBox2");
            var c = document.getElementById("TextBox3");
            var d = document.getElementById("TextBox4");
            var e = document.getElementById("TextBox5");
            var cp = document.getElementById("TextBox6");

            var button = document.getElementById("Button1");
            var f, f1, f2, f3, f4, f5;
            a.addEventListener('textInput', varify);
            function varify() {
                var fname = a.value.length;
                if (fname < 4) {
                    f = false;
                    document.getElementById("first").innerHTML = "Please Enter First Name";
                    document.getElementById("first").style.color = 'red';
                    //alert(fname);
                }
                else {
                    f = true;
                    document.getElementById("first").style.color = '#00B98E';
                    document.getElementById("first").innerHTML = "First Name";
                    //button.style.display = "block";
                }
            }

            b.addEventListener('textInput', varify1);
            function varify1() {
                var lname = b.value.length;
                if (lname < 4) {
                    f1 = false;
                    document.getElementById("last").innerHTML = "Please Enter Last Name";
                    document.getElementById("last").style.color = 'red';
                    //alert(fname);
                }
                else {
                    f1 = true;
                    document.getElementById("last").style.color = '#00B98E';
                    document.getElementById("last").innerHTML = "Last Name";
                    //button.style.display = "block";
                }
            }

            c.addEventListener('textInput', varify2);
            function varify2() {
                var email_regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                let gamil = "gmail.co";
                let yahoo = "yahoo.co";
                let hotmail = "hotmail.co";
                let outlook = "outlook.co";
                let yahooin = "yahoo.co.i";
                let yahoouk = "yahoo.co.u";
                let str1 = document.getElementById("TextBox3").value;
                let after_1 = str1.substring(str1.indexOf('@') + 1);
                let result_gamil = gamil.localeCompare(after_1);
                let result_yahoo = yahoo.localeCompare(after_1);
                let result_hotmail = hotmail.localeCompare(after_1);
                let result_outlook = outlook.localeCompare(after_1);
                let result_yahooin = yahooin.localeCompare(after_1);
                let result_yahoouk = yahoouk.localeCompare(after_1); 
                var email = c.value.length;
                if (email < 5) {
                    f2 = false;
                    document.getElementById("email").innerHTML = "Please Enter Email";
                    document.getElementById("email").style.color = 'red';
                }
                else if (email_regex.test(str1) == false) {
                    document.getElementById("email").innerHTML = "Email Not Valid";
                    document.getElementById("email").style.color = 'red';
                    f2 = false;
                }

                else if ((result_gamil != 0) && (result_yahoo != 0) && (result_hotmail != 0) && (result_outlook != 0) && (result_yahooin != 0) && (result_yahoouk != 0)) {
                   
                    document.getElementById('email').innerHTML = "Domain Name Invalid";
                    document.getElementById("email").style.color = 'red';
                    f2 = false;
                }
                else {
                    f2 = true;
                    document.getElementById("email").style.color = '#00B98E';
                    document.getElementById("email").innerHTML = "Email";
                    //button.style.display = "block";
                    f2 = true;
                }
            }

            d.addEventListener('textInput', varify3);
            function varify3() {
                var uname = d.value.length;
                if (uname < 7) {
                    f3 = false;
                    document.getElementById("uname").innerHTML = "8 character require !";
                    document.getElementById("uname").style.color = 'red';
                    //alert(fname);
                }
                else {
                    f3 = true;
                    document.getElementById("uname").style.color = '#00B98E';
                    document.getElementById("uname").innerHTML = "User Name";
                    button.style.display = "block";
                }
            }

            e.addEventListener('textInput', varify4);
            function varify4() {

                var uppercaseLetters = "/[A-Z]/g";

                var pass = e.value.length;

                if (pass < 7) {
                    f4 = false;
                    document.getElementById("pass1").innerHTML = "8 character require !";
                    document.getElementById("pass1").style.color = 'red';
                    //alert(fname);
                }
                else {
                    f4 = true;
                    document.getElementById("pass1").style.color = '#00B98E';
                    document.getElementById("pass1").innerHTML = "Password";
                    //button.style.display = "block";
                }
            }

            cp.addEventListener('textInput', varify5);
            function varify5() {

                var pass1 = e.value;
                var pass2 = cp.value;

                if (pass1 == pass2) {
                    f5 = true;
                    document.getElementById("pass2").innerHTML = "Confirm Password";
                    document.getElementById("pass2").style.color = '#00B98E';
                    button.style.display = "block";


                }
                else {
                    f5 = false;
                    document.getElementById("pass2").innerHTML = "Password did not match !";
                    document.getElementById("pass2").style.color = 'red';


                }
            }
            //cp.addEventListener('input', even);
            //    function even() {
            //        var cp = document.getElementById("TextBox6").value;
            //        var e = document.getElementById("TextBox5").value;
            //        if (cp == e) {
            //            f5 = true;
            //        }

            //    if ((f == true) & (f1 == true) & (f2 == true) & (f3 == true) & (f4 == true) & (f5 == true)) {
            //            alert("okk");
            //        }
            //}
            //    cp.addEventListener('keypress', function (event) {
            //        // Key pressed and released
            //        f, f1, f2, f3, f4, f5;
            //        if ((f == true) && (f1 == true) && (f2 == true) && (f3 == true) && (f4 == true) && (f5 == true)) {
            //            alert("okk");
            //        }
            //    });
            //document.getElementById("TextBox6").addEventListener('onfocusout', varify6);
            //function validate() {
            //    alert("SUBMIT");

            //}
            //const form = document.getElementById('form4');

            //form.addEventListener('submit', function (event) {
            //    //event.preventDefault(); // Prevents the default form submission
            //    if ((f == true) && (f1 == true) && (f2 == true) && (f3 == true)) {
            //          alert("okk");
            //      }

            //    // Your code to handle the form submission
            //});

        </script>
    

</body>
</html>
