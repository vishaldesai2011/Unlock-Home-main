<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Real_Estate.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 <title>Admin</title>
       <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <style>
        body{
            background-color:rgb(255,255,255,0.9);
            /*background-color:#f7f7f7;*/

           
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
       /* ul{
            list-style:none;
            margin-top:10px;

        }*/
        li{
            padding:7px;
            align-content:center;
            margin-top:30px;
            height:40px;

            
        }
       /* li:hover{
            background-color:#E9F8F9;
            margin-top:30px;
            width:160px;
            border-radius:10px;
        }*/
        .active{
             background-color:#E9F8F9;
            margin-top:30px;
            width:160px;
            border-radius:10px
        }
       
        a{
            text-decoration:none;
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
            background-color:#ffffff;
            /*box-shadow:1px 1px 3px 1px gray;*/
            /*border-bottom:1px solid gray;*/
            height:50px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color:black;
            padding:10px;
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
             /*color:blue;*/

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
           background-color:#019788;
            margin-left: 60px;
            margin-top:80px ;
            color: white;
            border: 1px solid black;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
         th{
             border:1px solid black;
             text-align:center;
         }
          tr{
               background-color:rgb(39, 35, 34,0.7);
          }
                     
          td{
               background-color: rgb(0,100,243,0.2);
               padding:7px;
          }
          table{
              position:relative;
              left:500px;
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
            .con{
                /*margin-top:60px;*/
                display:flex;
                width:100%;
                height:300px;
                flex-direction:row;
                row-gap:20px;

            }
            .grid{
                margin-top:20px;
                width:20%;
                height:200px;
                margin-left:150px;
                background:white;
                align-content:center;
                align-items:center;
                text-align:center;
                position:relative;
                box-shadow:1px 2px 0px 0px gray;
                animation-name: example;
                animation-duration: 1s;
                
            }
            @keyframes example {
              0%   {left:0px; top:-100px;opacity:20%;}
              100%  {left:0px; top:0px;opacity:100%;}
                            }
            #myChart{
                margin-left:25%;
                display:flex;
                position:relative;
                 animation-name: side;
                animation-duration: 1s;

            }
            #myChart1{
                 margin-left:25%;
                display:flex;
                position:relative;
                 animation-name: side;
                animation-duration: 1s;
                margin-top:100px;
            }
             @keyframes side {
            0%   {left:0px; top:200px;opacity:20%;}
            100%  {left:0px; top:0px;opacity:100%;}
                }

            .tabb1{

            }
            .ul1{
                justify-content:center;
                display:flex;
                height:50px;
                margin-top:1px;
                list-style:none;
                color:aliceblue;

            }
            .ul1:hover{
                display:flex;
                height:50px;
                margin-top:1px;
                list-style:none;
                color:aliceblue;

            }

            .top-nav{
                position:sticky;
                top:0px;
                cursor:pointer;
                width:100%;
                height:70px;
                padding-top:0px;
                background-color:rgb(255,255,255,0.5);
                justify-content:center;
                z-index:1;
            }
            .li1{
                font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size:20px;
                padding-left:10px;
                margin:10px;
                color:black;
            }
            .li1:hover{
                transition-property:all;
                transition-duration:1s;
                padding-left:10px;
                margin:10px;
                color:red;
            }
            #DATA{
                display:none;
            }
            a{
                color:black;
                text-decoration-color:none;
            }
            #CARV,#COUNT{
                display:none;
            }
      
         
       
          
          
        
    </style>
</head>
    <body>
        <div class="top-nav" id="top">
        <ul class="ul1">
            <li class="li1"><a href="#">Property</a></li>
            <li class="li1"><a href="Delete_as_Admin.aspx">Records</a></li>
            <li class="li1"><a href="Users.aspx">Users</a></li>
            <li class="li1"><a href="Admin_Login.aspx">Signout</a></li>
        </ul>
        </div>
    <div class="con">
        <asp:Label ID="DATA" runat="server" Text="MONTH_VISITORS"></asp:Label>
        <asp:Label ID="CARV" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="COUNT" runat="server" Text="Label"></asp:Label>


 <%--       <div class="cust-nav">
         <ul>
             <li class="cust"><h3 class="h3">CarTour</h3></li>
             <asp:Label ID="Label1" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li class="active"><a href="link1" class="active-a">Desbord</a></li>

             <asp:Label ID="Label2" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="CarCompany.aspx">New Company</a></li>

             <asp:Label ID="Label3" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="admin.aspx">New Car</a></li>

             <asp:Label ID="Label58" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="link1">Show Cars</a></li>

             <asp:Label ID="Label4" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin_Users.aspx">Users</a></li>

             <asp:Label ID="Label5" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="link1">Reviews</a></li>

             <asp:Label ID="Label6" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="link1"></a></li>

             <asp:Label ID="Label7" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="link1"></a></li>

             <asp:Label ID="Label8" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li  class="red1"><a href="link1"><font color="white">Signout</font></a></li>
         </ul>
        </div>--%>
        <%--Navbar END--%>
        <%--Contenet START--%>
        <div class="other"  onscroll="con()">
            <h2 class="heading">DashBord</h2>
            
                <div class="con">

                    <div class="grid">
                       
                        <span class="iconify" data-icon="material-symbols:person" style="color: #ff9700;" data-width="100" data-height="100"></span>
                        <h5><asp:Label ID="USERS1" runat="server" Text="999"></asp:Label></h5>
                        <p>Welcome</p>

                    </div>
                    <%--<div class="grid">
                        <span class="iconify" data-icon="material-symbols:cloud-download-sharp" style="color: #019788;" data-width="100" data-height="100"></span>
                         <h5><asp:Label ID="CARS1" runat="server" Text="1000"></asp:Label></h5>
                        <p>Collections</p>
                    </div>--%>
                    <div class="grid">
                     <span class="iconify" data-icon="tdesign:money" style="color: green;" data-width="100" data-height="100"></span>
                        <h5><asp:Label ID="REVS" runat="server" Text="Label"></asp:Label></h5>
                        <p>Brokerage</p>
                    </div>
                    <div class="grid">
                        <span class="iconify" data-icon="material-symbols:bath-public-large-sharp" style="color: #1b95f6;" data-width="100" data-height="100"></span>
                         <h5><asp:Label ID="VISITOR" runat="server" Text="Label"></asp:Label></h5>

                        <p>Visitors</p>
                    </div>
                </div>

                <canvas id="myChart" style="width:100%;max-width:700px"></canvas>
                <canvas id="myChart1" style="width:100%;max-width:700px"></canvas>

             <%-- <table>
                <tr><th>Rank</th><th>Company</th><th>Car</th><th>View</th></tr>
                <tr><td>1</td><td>Mercedes-Benz</td><td>S-650d</td><td>100</td></tr>
            </table>--%>
          
                </div>
          
        </div>
        <script>
            var arr = document.getElementById('DATA').textContent;
            let newStr = arr.replace(/\s+/g, '');
            const myArray = newStr.split(",");
          

            document.getElementById('VISITOR').innerHTML = myArray[12];

            var xValues = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'June', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
            //var yValues = [20, 49, 44, 24, 15, 20, 49, 44, 24, 15, 20, 49, 44, 24, 15, 20, 49, 44, 24, 15];
            var yValues = [myArray[10], myArray[11], myArray[0], myArray[1], myArray[2], myArray[3], myArray[4], myArray[5], myArray[6], myArray[7], myArray[8], myArray[9]];
            var barColors = ["red", "green", "blue", "orange", "brown"];

            new Chart("myChart", {
                type: "line",
                data: {
                    labels: xValues,
                    datasets: [{
                        fill: false,
                        lineTension: 0,
                        backgroundColor: "rgba(0,0,255,1.0)",
                        borderColor: "rgba(0,0,155,0.10)",
                        data: yValues
                    }]
                },
                options: {
                    legend: { display: false 
                    },
                    title: {
                        display: true,
                        text: "Year 2023 Visitors"
                    }
            ,

                    scales: {
                        yAxes: [{ ticks: { min: 0, max: 1000 } }],
                    }
                }
            });
            
            var arr = document.getElementById('CARV').textContent;
            let newStr1 = arr.replace(/s+/g, '');
            const Cars = newStr1.split(",");

            var arr12 = document.getElementById('COUNT').textContent;
            let newStr12 = arr12.replace(/\s+/g, '');
            const cou = newStr12.split(",");


            //Chart For Cars View
            var xValues = Cars;
            var yValues = cou;
            var barColors = ["red", "green", "blue", "orange", "brown"];

            new Chart("myChart1", {
                type: "bar",
                data: {
                    labels: xValues,
                    datasets: [{
                        backgroundColor: barColors,
                        data: yValues
                    }]
                },
                options: {
                    legend: { display: false },
                    title: {
                        display: true,
                        text: "Most Viewed Cars"
                    }
                }
            });

              

            

            


          

        </script>
</body>
    
</html>
