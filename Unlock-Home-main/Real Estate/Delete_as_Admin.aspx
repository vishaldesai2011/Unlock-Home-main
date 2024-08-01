<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete_as_Admin.aspx.cs" Inherits="Real_Estate.Delete_as_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 <title>Admin</title>
       <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
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
    <div class="con">

        <div class="cust-nav">
         <ul>
             <li class="cust"><h3 class="h3"></h3></li>
             <asp:Label ID="Label1" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin.aspx">Desbord</a></li>

             <%--<asp:Label ID="Label2" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin_new_property.aspx">New Property</a></li>--%>


             <asp:Label ID="Label58" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li  class="active"><a href="link1" class="active-a">Action</a></li>

            <%-- <asp:Label ID="Label3" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="link1" >Update Property</a></li>--%>

             <asp:Label ID="Label4" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Users.aspx">Users</a></li>

             <asp:Label ID="Label5" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Brokrage.aspx">Brokrage</a></li>

             <asp:Label ID="Label6" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="contact.aspx">Contact</a></li>

          

             <asp:Label ID="Label8" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li  class="red1"><a href="Admin_Login.aspx"><font color="white">Signout</font></a></li>
         </ul>
        </div>
        <%--Navbar END--%>

        <%--Contenet START--%>
        <div class="other">
            <center><h1 class="heading">Unlock Property</h1></center>
            <center>
         <%--   <form id="form2" runat="server">
            <asp:GridView ID="myGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
            <asp:BoundField ItemStyle-BorderWidth="2" DataField="Car_Company" HeaderText="Company" />
            <asp:BoundField ItemStyle-BorderWidth="2" DataField="Car_Name" HeaderText="Car Name" />
             <asp:BoundField ItemStyle-BorderWidth="2" DataField="Car_Variant" HeaderText="Varient" />
             <asp:BoundField ItemStyle-BorderWidth="2" DataField="Engine" HeaderText="Engine" />

            <asp:BoundField ItemStyle-BorderWidth="2" DataField="Price" HeaderText="Price" />
            </Columns>
            </asp:GridView>
                </form>--%>

                <asp:Table ID="myTable" runat="server">
                 
                </asp:Table>
                </center>
        </div>
        </div>
   
</body>

   
</html>
