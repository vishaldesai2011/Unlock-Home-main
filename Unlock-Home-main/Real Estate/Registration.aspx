<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Real_Estate.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registration</title>
    <style>
        *{
           margin:0;
           box-sizing:border-box;
        }
        .container{
            margin: auto;
            width: 70%;
            height:500px;
            /*border: 3px solid green;*/
            /*padding: 10px;*/
        }
        .left{
             float:left;
             width:50%;
             height:100%;
             background-image:url(../image/r1.png); 
             /*background-size:cover;*/
             background-repeat: no-repeat;
             background-size: cover;
             

        }
        .right{
            /*border:2px solid black;*/
             float:right;
             width:50%;
             height:100%;
            /*background:red;*/
        }
        #email{
            width:70%;
            justify-content:center;
            align-items:center;
            margin-top:30px;
            height:40px;
        }
        .form{  
            margin-top:30%;
            justify-content:center;
            align-items:center;
        }
        #varify{
            margin-top:20px;
        }
        #varify{
            height:40px;
            width:70%;
            background:#00B98E;
            border:none;
            color:white;
        }
         #varify:hover{
            height:40px;
            width:70%;
            background:white;
            border:1px solid #00B98E;
            color:#00B98E;
        }
         h1{
             font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
             margin-top:30px;
             color:#00B98E;
         }
         .img{
             display:none;
         }
        @media only screen and (max-width: 700px) {
            .left {
                width:100%;
                height:200px;
                background:none;
                /*display:none;*/
            }
              .right {
                width:100%;
            }
              .form{
                  /*margin-top:20px;*/
                  margin-left:60px;
              }
               .container{
                   width:90%;
               }
               .img{
                   /*padding-top:40px;*/
                   display:block;
                   width:300px;
                   /*height:300px;*/
               }
        }

       
    </style>
</head>

<body>
  
      <Center> <h1>Registration</h1> </Center> 

    <div class="container">
        <div class="left">
            <img class="img" src="../image/r4.png" />
        </div>

        <div class="right">
              <form id="form1" runat="server">
              <div class="form">
                  <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox><br />
                  <asp:Button ID="varify" runat="server" Text="Verify" OnClick="Click" />
              </div>
    </form>
        </div>
    </div>
</body>
</html>
