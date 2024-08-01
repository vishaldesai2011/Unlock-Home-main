    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="unlockhomes.aspx.cs" Inherits="Real_Estate.unlockhomes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <!-- Required meta tags -->
    <%--https://preview.themeforest.net/item/wp-residence-real-estate-wordpress-theme/full_screen_preview/7896392?_ga=2.119238153.1401183142.1693074605-1684958130.1693074605--%>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
        <title>Unlock Home</title>
  <style>
      *{
          margin:0;
          box-sizing:border-box;
          /*justify-content: center;*/
          align-items: center;
      }
      nav{
          width:100%;
          height:60px;
          display:flex;
          background-color:black;
          /*background-color:white;*/
          border-bottom:2px solid black;
         /* position:fixed;
          top:0;
          z-index:100;*/
          

      }
      .logo{
          display:block;
          width:40px;
          height:40px;
          margin-left:30px;
      }
      .left_nav{
          width:60%;
      }
      .right_nav{
          width:40%;
          float:right;
      }
      .ul1{
          list-style:none;
          display:flex;
      }
      .li1{
          padding:20px;
          
      }
      /*https://www.free-css.com/free-css-templates/page295/makaan*/
      .a1{
          font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
          font-size:16px;
          color:white;
          text-decoration:none;
      }
       .a1:hover{
          font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
          font-size:16px;
          color:#00B98E;
          text-decoration:none;
      }
      .active{
           color:#00B98E;
      }
      .add{
          background-color:#00B98E;
          color:white;
          border:none;
          height:34px;
          border-radius:2px;
          width:120px;
          font-size:16px;
      }
     .add:hover{
          background-color:black;
          border:1px solid #00B98E;
          color:#00B98E;
     }
      .container{
          /*background-color:aqua;*/
          height:500px;
          width:100%;
          display:flex;
          align-items:center;
          justify-content:center;
          position:relative;
      }
      .inner_box{
          border-radius:20px;
          width:90%;
          height:400px;
          background-color:black;
          margin-top:0px;
          background-image:url(../image/h3.jpg);         
          background-repeat:no-repeat;
          background-size:cover;
           border: 1px solid #ccc;
         box-sizing: border-box;
      }
      .right_box{
          width:50%;
          float:right;
      }
       .left_box{
          width:50%;
          float:left;
      }
       .login{
           color:red;
       }
       .title{
           color:aliceblue;
           margin-top:140px;
           display:flex;
           justify-content:center;
           align-items:center;
           font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
       }
       .img_post{
           margin-top:60px;
           margin-left:80px;
       }
       .serch{
           width:100%;
           height:100px;
           display:flex;
           justify-content:center;
           align-items:center;
           position:absolute;
           bottom:100px;
         /*  background:#00B98E;*/
       }
       .inner_search{
           display:flex;
           justify-content:center;
           align-items:center;
           background-color:black;
           width:850px;
           height:80px;
           border-radius:13px;
           
       }
       .inp{
           padding:20px;
           height:30px;
           margin-right:13px;
       }
       .add1{
          background-color:#00B98E;
          height:34px;
          border-radius:2px;
          width:120px;
          font-size:16px;
          border:none;
          border-radius:10px;
       }
       .response{
           display:none;
       }
       .nav1{
           display:none;
       }
       .find_h2{
           display:none;
       }
       .filter_nav{
           width:100%;
           display:flex;
           justify-content:center;
           align-content:center;
           margin-top:30px;
           height:50px;
           /*background-color:brown;*/
       }
       .filter{
           background-color:black;
           width:90%;
           height:100%;
           float:left;
           display:flex;
           text-align:center;
           border-radius:10px;
           
       }
       .a_nav{
           text-align:center;
           width:50px;
           margin-left:10px;
            text-decoration:none;
            color:#00B98E;
            background-color:black;
            border:none;
            height:30px;
            border-radius:4px;  
       }
       .a_nav:hover{
          cursor:pointer;
          border:1px solid brown;
       }
       .main_container{
           width:100%;
           height:100%;
           display:flex;
           flex-wrap:wrap;
           flex-direction:row;

       }
       .grid{
           /*border:2px solid black;*/
           margin-left:55px;
           margin-top:50px;
           width:600px;
           height:350px;
           /*background-color:darkgreen;*/
           position:relative;
           /*border-radius:15px;*/
       }
       .grid_left{
           /*border-right:2px solid black;*/
           width:50%;
           height:100%;
           background-color:aquamarine;
           float:left;
       }
       .grid_right{
           background-color:#fdfbf9;
           /*background-color:white;*/
           float:right;
            width:50%;
           height:100%;

       }
       .img_grid{
           width:100%;
           height:100%;
       }
       .h1_grid{
           margin-left:5px;
           margin-top:10px;
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-size:22px;
       }
      table, th, td {
       /* border: 1px solid black;
        border-collapse: collapse;*/
      }
      table{
          width:300px;
          margin-top:5px;
          margin-left:5px;
      }
      td{
          font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          flex-flow:wrap;
          text-align:center;
          padding:6px;
      }
      .la{
          text-align:unset;
      }
      .lable{
          position:absolute;
          background-color:#D61A3C;
          left:10px;
          top:10px;
          width:100px;
          height:25px;
          text-align:center;
          display:flex;
          justify-content:center;
          border-radius:5px;
      }
      .lable_h2{
          color:white;
          font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      }
      .price{
          font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          font-size:20px;
      }
       .pointer{
           cursor:pointer;
       }
      
      
       .hov_chnage:hover{
           content: url("../image/icons8-heart-30.png");
       }
       .footer{
           width:100%;
           height:300px;
           background-color:black;
           margin-top:50px;
       }
       .form{
           display:none;
           margin-left:35%;
           justify-content:center;
           width:400px;
           height:500px;
           background-color:lightgray;
           position:absolute;
           top:100px;
       }
      /* .footer_one{
           width:33%;
           height:100%;
           color:white;
       }
       .footer_two{
           width:33%;
           height:100%;
           color:white;

       }
       .footer_three{
           width:33%;
           height:100%;
           color:white;

       }
*/
       
      @media only screen and (max-width: 870px) {
          #prop1{
              display:none;
          }
          nav{
              width:inherit;
          }
      }

      @media only screen and (max-width: 860px) {
           .left_nav{
          display:none;
      }
      .logo{
          display:none;
      }
      .img_post{
          display:none;
      }
      nav{
          display:none;
      }
       .response{
           display:block;
           width:100%;
       }
       .u2{
           background-color:black;
           display:block;
           list-style:none;
       }
       li{
            background:black;
            padding-top:7px;
           list-style:none;
            
       }
       .a2{
           text-decoration:none;
           color:#00B98E;
           font-size:17px;
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
       }
       .nav1{
           display:block;
           width:100%;
           height:30px;
           background-color:black;
       }
       .serch{
           display:flex;
           flex-direction:row;
           width:100%;
           height:auto;
           justify-content:center;
           align-items:center;
           bottom:0px;

       }
       .inp{
           margin-left:35%;
           margin-top:5%;
       }
       .inner_search{
           background-color:white;

           height:250px;
       }
       .add1{
           margin-top:5%;
           margin-left:40%;
       }
       .find_h2{
           font-size:25px;
           font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
           text-align:center;
           margin-top:50px;
           display:block;
           color:#7a2b2b;
       }
        .nav1_left{
           margin-top:5px;
           width:70%;
           float:left;
       }
       .nav1_rig{
           margin-top:8px;
           width:10%;
           float:right;
       }
       .logo1{
           font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
           color:white;
       }
       

     

     

      }
       /*Responsive*/
         @media only screen and (max-width: 500px) {
      .left_nav{
          display:none;
      }
      .logo{
          display:none;
      }
      .img_post{
          display:none;
      }
      nav{
          display:none;
      }
       .response{
           display:block;
           width:100%;
       }
       .u2{
           background-color:black;
           display:block;
           list-style:none;
       }
       li{
            background:black;
            padding-top:7px;
           list-style:none;
            
       }
       .a2{
           text-decoration:none;
           color:#00B98E;
           font-size:17px;
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
       }
       .nav1{
           display:block;
           width:100%;
           height:40px;
           background-color:black;
       }
       .serch{
           display:flex;
           flex-direction:row;
           width:100%;
           height:400px;
           justify-content:center;
           align-items:center;
           bottom:0px;

       }
       .inp{
           margin-left:25%;
           margin-top:5%;
       }
       .inner_search{
           background-color:white;

           height:250px;
       }
       .add1{
           margin-top:5%;
           margin-left:35%;
       }
       .nav1_left{
           margin-top:5px;
           width:70%;
           float:left;
       }
       .nav1_rig{
           margin-top:8px;
           width:10%;
           float:right;
       }
       .logo1{
           font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
           color:white;
       }
        .filter{
            margin-top:500px;
           background-color:black;
           width:90%;
           height:100%;
           float:left;
           display:flex;
           text-align:center;
           border-radius:10px;   
       }
        .main_container{
            padding-left:20px;
            margin-top:250px;
        }
        .grid{
            height:600px;
            margin-left:20px;
            width:350px;
            margin-left:0px;
        }
         .grid_left{
           border-right:2px solid black;
           width:100%;
           height:50%;
           background-color:aquamarine;
           /*float:left;*/
       }
       .grid_right{
            width:100%;
           height:50%;
           border:1px solid gray;
       }
       .margin_price{
           margin-top:10px;
       }
        }
       
  </style>
   
 </head>
    <body>
        <%--Nav1 Start--%>
    <nav id="nav">
        <div class="left_nav">
            <img class="logo" src="img.png" />
        </div>
        <div class="right_nav">
            <ul class="ul1">
                <li class="li1"><a class="a1 active" href="#">HOME</a></li>
                <li class="li1"><a class="a1" href="#">ABOUT</a></li>
                <li class="li1"><a class="a1" href="#">PROPERTY</a></li>
                <li class="li1"><a class="a1" href="#">CONTACT</a></li> 
                <%--<li id="prop1"><button class="add"  onclick="">Add Property </button></li>--%>
                <li id="prop1" class="li1"><a onclick="show()" class="a1 login" href="#"><span class="iconify" data-icon="iconamoon:profile-fill" style="color: #00b98e;" data-width="30" data-height="30"></span></a></li>        
            </ul>
        </div>
        
    
           
    </nav>
        <%--Nav1 End--%>
<%--Responsive nav start--%>
        <div class="nav1">
            <div class="nav1_rig">
            <%--<button onclick="none()">Open</button>--%>
                <span onclick="none()" class="iconify" data-icon="vaadin:lines" style="color: white;" data-width="20" data-height="20"></span>

            </div>
            <div class="nav1_left">
                <h2 class="logo1">Unlock Home</h2>

            </div>
        </div>
            <div class="response" id="aa">
            <ul class="u2">

            <li class="li2"><a class="a2" href="#">Home</a></li>
            <li class="li2"><a class="a2" href="#">About</a></li>
            <li class="li2"><a class="a2" href="#">Contact</a></li>
            <li class="li2"><a class="a2" href="#">Login</a></li>


            </ul>
        </div>
<%--Responsive nav End--%>


        <div class="container">
            <div class="inner_box" id="img_change">
                <div class="left_box">
                    <h1 class="title">Find your next,<br />Home in Your City</h1>
                </div>
                <div class="right_box">
                <%--<img class="img_post" src="../image/poster.png" />--%>
                </div>
            </div>
        </div>
          <div class="serch">
              <div class="inner_search">
              <form id="form1" runat="server">
                  <h2 class="find_h2">Find Home</h2>
                  <input class="inp" id="Text1" type="text" placeholder="City" />
                  <input class="inp" id="Text12" type="text" placeholder="Property Type" />
                  <input class="inp" id="Text3" type="text" placeholder="Property category" />
                  <button class="add1">Search </button>
                  </form>
                </div>
            </div>
        <%--Filter_nav--%>
        <div class="filter_nav">
            <div class="filter">
               <button class="a_nav">All</button>
               <button class="a_nav">Rent</button>
               <button class="a_nav">Sell</button>



            </div>
        </div>
        <%--Gridview--%>
        <div class="main_container">
            <%--Grid Start--%>
            <div class="grid">
                <div class="grid_left">
                    <img class="img_grid" src="../image/h3.jpg" />
                </div>
                <div class="grid_right">
                     <h1 class="h1_grid">Real Luxury family House </h1> 
                    <table>
                        <tr><td colspan="1"><span class="iconify" data-icon="mdi:location" style="color: black;" data-width="30" data-height="30"></span></td><td class="la" colspan="3"> Ahmedabad,Bopal</td></tr>
                         <tr><td><span class="iconify" data-icon="mdi:bedroom-outline" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">6 Bedrooms</td><td><span class="iconify" data-icon="cil:bath" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">3 Bathrooms</td></tr>
                         <tr><td><span class="iconify" data-icon="gis:measure" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">750 sqft</td><td><span class="iconify" data-icon="tabler:stairs-up" data-width="30" data-height="30"></span></td><td class="la">2nd</td></tr>
                        <tr><td><span class="iconify" data-icon="streamline:shopping-catergories-sofa-decoration-furniture-interior-design-couch-sofa-decorate" style="color: black;" data-width="30" data-height="30"></span></td><td colspan="2">semi-furnished</td></tr>
                        <%--<tr><td  colspan="3" class="la"  rowspan="4"><p class="la">₹20,000,000</p></td><td  rowspan="4" class="la" colspan="1">Hello</td></tr>--%>
                    </table>

                    <table class="margin_price">
                        <tr><td  colspan="3" class="la"  rowspan="4"><p class="la price"><b>₹20,000,000</b></p></td><td id="heart"  rowspan="4" class="la" colspan="1"> <img class="pointer hov_chnage" src="../image/icons8-heart-30%20(1).png" /></td></tr>
                    </table>

                </div>
                 <div class="lable" style="background-color:#00B98E">
                <p class="lable_h2">For Sell</p>
            </div>
            </div>
            <%--Grid End--%>

             <%--Grid Start--%>
            <div class="grid">
                <div class="grid_left">
                    <img class="img_grid" src="../image/h3.jpg" />
                </div>
                <div class="grid_right">
                     <h1 class="h1_grid">Real Luxury family House </h1> 
                    <table>
                        <tr><td colspan="1"><span class="iconify" data-icon="mdi:location" style="color: black;" data-width="30" data-height="30"></span></td><td class="la" colspan="3"> Ahmedabad,Bopal</td></tr>
                         <tr><td><span class="iconify" data-icon="mdi:bedroom-outline" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">6 Bedrooms</td><td><span class="iconify" data-icon="cil:bath" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">3 Bathrooms</td></tr>
                         <tr><td><span class="iconify" data-icon="gis:measure" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">750 sqft</td><td><span class="iconify" data-icon="tabler:stairs-up" data-width="30" data-height="30"></span></td><td class="la">2nd</td></tr>
                        <tr><td><span class="iconify" data-icon="streamline:shopping-catergories-sofa-decoration-furniture-interior-design-couch-sofa-decorate" style="color: black;" data-width="30" data-height="30"></span></td><td colspan="2">semi-furnished</td></tr>
                        <%--<tr><td  colspan="3" class="la"  rowspan="4"><p class="la">₹20,000,000</p></td><td  rowspan="4" class="la" colspan="1">Hello</td></tr>--%>
                    </table>

                    <table class="margin_price">
                        <tr><td  colspan="3" class="la"  rowspan="4"><p class="la price"><b>₹20,000,000</b></p></td><td id="heart"  rowspan="4" class="la" colspan="1"> <img class="pointer hov_chnage" src="../image/icons8-heart-30%20(1).png" /></td></tr>
                    </table>

                </div>
                 <div class="lable" style="background-color:#00B98E">
                <p class="lable_h2">For Sell</p>
            </div>
            </div>           
            <%--Grid End--%>

             <%--Grid Start--%>
           <div class="grid">
                <div class="grid_left">
                    <img class="img_grid" src="../image/h3.jpg" />
                </div>
                <div class="grid_right">
                     <h1 class="h1_grid">Real Luxury family House </h1> 
                    <table>
                        <tr><td colspan="1"><span class="iconify" data-icon="mdi:location" style="color: black;" data-width="30" data-height="30"></span></td><td class="la" colspan="3"> Ahmedabad,Bopal</td></tr>
                         <tr><td><span class="iconify" data-icon="mdi:bedroom-outline" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">6 Bedrooms</td><td><span class="iconify" data-icon="cil:bath" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">3 Bathrooms</td></tr>
                         <tr><td><span class="iconify" data-icon="gis:measure" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">750 sqft</td><td><span class="iconify" data-icon="tabler:stairs-up" data-width="30" data-height="30"></span></td><td class="la">2nd</td></tr>
                        <tr><td><span class="iconify" data-icon="streamline:shopping-catergories-sofa-decoration-furniture-interior-design-couch-sofa-decorate" style="color: black;" data-width="30" data-height="30"></span></td><td colspan="2">semi-furnished</td></tr>
                        <%--<tr><td  colspan="3" class="la"  rowspan="4"><p class="la">₹20,000,000</p></td><td  rowspan="4" class="la" colspan="1">Hello</td></tr>--%>
                    </table>

                    <table class="margin_price">
                        <tr><td  colspan="3" class="la"  rowspan="4"><p class="la price"><b>₹20,000,000</b></p></td><td id="heart"  rowspan="4" class="la" colspan="1"> <img class="pointer hov_chnage" src="../image/icons8-heart-30%20(1).png" /></td></tr>
                    </table>

                </div>
                 <div class="lable" style="background-color:#00B98E">
                <p class="lable_h2">For Sell</p>
            </div>
            </div>
            <%--Grid End--%>

            <%--Grid Start--%>
           <div class="grid">
                <div class="grid_left">
                    <img class="img_grid" src="../image/h3.jpg" />
                </div>
                <div class="grid_right">
                     <h1 class="h1_grid">Real Luxury family House </h1> 
                    <table>
                        <tr><td colspan="1"><span class="iconify" data-icon="mdi:location" style="color: black;" data-width="30" data-height="30"></span></td><td class="la" colspan="3"> Ahmedabad,Bopal</td></tr>
                         <tr><td><span class="iconify" data-icon="mdi:bedroom-outline" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">6 Bedrooms</td><td><span class="iconify" data-icon="cil:bath" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">3 Bathrooms</td></tr>
                         <tr><td><span class="iconify" data-icon="gis:measure" style="color: black;" data-width="30" data-height="30"></span></td><td class="la">750 sqft</td><td><span class="iconify" data-icon="tabler:stairs-up" data-width="30" data-height="30"></span></td><td class="la">2nd</td></tr>
                        <tr><td><span class="iconify" data-icon="streamline:shopping-catergories-sofa-decoration-furniture-interior-design-couch-sofa-decorate" style="color: black;" data-width="30" data-height="30"></span></td><td colspan="2">semi-furnished</td></tr>
                        <%--<tr><td  colspan="3" class="la"  rowspan="4"><p class="la">₹20,000,000</p></td><td  rowspan="4" class="la" colspan="1">Hello</td></tr>--%>
                    </table>

                    <table class="margin_price">
                        <tr><td  colspan="3" class="la"  rowspan="4"><p class="la price"><b>₹20,000,000</b></p></td><td id="heart"  rowspan="4" class="la" colspan="1"> <img class="pointer hov_chnage" src="../image/icons8-heart-30%20(1).png" /></td></tr>
                    </table>

                </div>
                 <div class="lable" style="background-color:#00B98E">
                <p class="lable_h2">For Sell</p>
            </div>
            </div>
            <%--Grid End--%>

               <div id="show1" class="form">

               </div>
        </div>
         <script>
             var stat = 0;
             var stat1 = 0;

             function none() {

                 if (stat == 0) {
                     stat = 1;
                     open();

                 }
                 else {
                     stat = 0;
                     close();
                 }
             }
             function close() {
                 document.getElementById("aa").style.display = "block";
                 

             }
             function open() {
                 document.getElementById("aa").style.display = "none";
             }
             function sleep(ms) {
                 return new Promise(resolve => setTimeout(resolve, ms));
             }
             change();
             //Chanege image
             async function change() {
                 document.getElementById("img_change").style.backgroundImage = "url('../image/h3.jpg')";
                 await sleep(5000); 
                 document.getElementById("img_change").style.backgroundImage = "url('../image/h2.jpg')";
                 await sleep(5000);
                 document.getElementById("img_change").style.backgroundImage = "url('../image/h4.jpg')";
                 change();
             }
             function check() {
                 alert("hey i am working!");
             }
             function fill() {
                 document.getElementById("heart").innerHTML = '<span class="iconify c1 pointer" data-icon="mdi:heart" style="color: red;" data-width="30" data-height="30"></span>';
             }
             function unfill() {
                 document.getElementById("heart").innerHTML = '<span class="iconify c1 pointer" data-icon="mdi:heart-outline" style="color: red;" data-width="30" data-height="30"></span>';
             }

             function show() {

                 if (stat1 == 1) {
                     stat1 = 0;
                     open1();

                 }
                 else {
                     stat1 = 1;
                     close1();
                 }
             }
             function open1() {
                 document.getElementById("show1").style.display = "none";

             }
             function close1() {
                 document.getElementById("show1").style.display = "block";


             }
             

            
         </script>
    </body>
</html>