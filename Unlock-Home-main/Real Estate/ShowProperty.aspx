<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowProperty.aspx.cs" Inherits="Real_Estate.ShowProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete</title>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <style>
        body{
            /*background-color:rgb(0,0,0,0.9);*/
            background-color:aliceblue;

           
        }
        .con{
           
            margin:0px;
            /*background-color: rgb(0,0,0,0.9);*/
            /*background-color:black;*/
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
             
        }
        .cust-nav{
            position:sticky;
            top:0;
            width:200px;
            height:745px;
            background-color:aqua;
            float:left;
            background-color:black;
        }
        .other{
            width:100%;
            height:100%;

        }
        ul{
            list-style:none;
            margin-top:10px;

        }
        li{
            padding:7px;
            align-content:center;
            margin-top:30px;
            height:40px;

            
        }
        li:hover{
            background-color:#E9F8F9;
            margin-top:30px;
            width:160px;
            border-radius:10px;
        }
        .active{
             background-color:#E9F8F9;
            margin-top:30px;
            width:160px;
            border-radius:10px
        }
        .active-a{
            color:blue;
        }
        a{
            text-decoration:none;
            color:gray;
        }
          a:hover{
                
        }
        .h3{
            color:dimgray;
        }
        .lbl{

        }
        .lbl:hover{
            text-decoration:underline;
        }
        .heading{
            background-color:black;
            height:80px;
            color:gray;
            padding:5px;
        }
        .cust{
            padding:7px;
            align-content:center;
            margin-top:40px;
            height:40px;

        }
        .cust:hover{
            background-color:black;

        }
        .input{
            margin-left:50px;
            width:350px;
            height:40px;
            margin-bottom:20px;

        }
        .lbl1{
            margin-left:50px;
        }
        .after{
            margin-left:250px;
        }
        .textarea{
            height:200px;
            width:500px;
        }
        .btn{
            width:200px;
            height:40px;
            background-color:black;
            color:aliceblue;
            margin-bottom:40px;

        }
         .btn:hover{
            width:200px;
            height:40px;
            background-color:white;
            color:black;
            border:2px solid black;
            margin-bottom:40px;

        }.a1{
             margin-left:200px;
             font-size:20px;
             color:blue;

         }.a1:hover{
             /*margin-left:200px;*/
            /* font-size:20px;*/
             color:darkred;

         }
         
         .amt{
              margin-left:400px;
          }
          .nav2{
              align-content:center;
              justify-content:center;
              width:100%;
              height:50px;
              background-color:whitesmoke;
              justify-content:center;
          }
          .hr{
              
        height:4px;
        background-color:darkred;
        border: none;
    
          }
          .tablecell{
               border:1px solid red;
               
          }
          #Table1{
              border:1px solid black;
          }
            .red1{
              width:150px;
              background-color:darkred;
              border-radius:10px;
              color:white;
          }
          .red1:hover{
              width:150px;
              background-color:red;
              border-radius:10px;
              color:white;
          }
          table,td,tr{
              background-color:black;
            margin-left: 60px;
            margin-top:80px ;
            color: white;
            border: 1px solid black;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
          tr{
               background-color:rgb(39, 35, 34,0.7);
          }
                     
          td{
               background-color: rgb(0,100,243,0.2);
               padding:7px;
          }
             /*body{*/
            /* background: linear-gradient(90deg, rgba(31,158,183,1) 28%, rgba(11,11,159,1) 50%, rgba(255,84,197,1) 87%); */
            /*background-color: rgb(0,0,0,0.9);

        }*/
            .a1{
                    color:red;
            }
            .a2{
                color:red;
            }
            .a2:hover{
                color:darkred;
            }
          
       
          
          
        
    </style>
</head>
<body>
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
     <asp:Table ID="myTable" runat="server">
                 
                </asp:Table>

</body>
</html>
