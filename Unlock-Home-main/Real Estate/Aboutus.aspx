<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="Real_Estate.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <style>
  @import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap');
</style>
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
    <title>About Us</title>
    
   <style>
       *{
           margin:0;
           padding:0;
           box-sizing:border-box;
       }
       .con{
           width:100%;
           height:800px;
           background-image:url('image/bg3.jpg');
           background-size:cover;
           background-repeat:no-repeat;
           animation:backgroundanim;
           animation-duration:1s;
       }
       .nav{
           width:100%;
           height:50px;
           background-color:rgb(100,70,100,0.2);
           border-bottom:1px solid white;
           position:relative;
           animation:navanim;
           animation-duration:1s;
           
       }
       @keyframes navanim{
           0%{top:-100px;opacity:20%;}
           25%{top:-50px;opacity:40%;}
           50%{top:-25pc;opacity:80%;}
           100%{top:0px;opacity:100%;}
       }

        @keyframes backgroundanim{
           0%{opacity:20%;}
           25%{opacity:40%;}
           50%{opacity:80%;}
           100%{opacity:100%;}
       }
         @keyframes TITLE{
           0%{top:-300px;}
          /* 25%{top:-75px;}
           50%{top:-50px;}
           75%{top:-25px;}*/
           100%{top:0px;}
       }
       ul{
           list-style:none;
           display:flex;
           justify-content:center;
       }
       li{
           padding:15px;
           color:white;
           font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
       }
       .title{
          /*color:rgba(202,240,250,255);*/
          color:white;
          font-family: 'Source Sans Pro', sans-serif;
          font-size:28px;
          
       }
       .cross{
           width:650px;
           height:200px;
           margin-top:50px;
           margin-left:450px;
           animation:TITLE;
           position:relative;
           /*animation-delay:1s;*/
           animation-duration:2s;
           /*background:rgb(100,30,60,0.3)*/

       }
       .content{
           width:200px;
           height:600px;
           position:relative;
           top:20px;
           left:0px;
           /*float:left;*/
           left:-500px;
           top:50px;

          
       }
       .check{
           width:530px;
           animation:slide;
           animation-duration:1s;
           position:relative;
           left:200px;
           top:50px;

       }
        @keyframes slide{
           0%{left:-200px;}
          /* 25%{left:-100px;}
           50%{left:0px;}
           75%{left:100px;}*/
           100%{left:200px;}
       }
        .left{
            width:500px;
            height:300px;
            background-color:white;
           border-right:6px solid black;


        }
        .right{
            margin-top:20px;
            width:500px;
            height:350px;
            background-color:white;
            position:relative;
            left:495px;
           border-left:6px solid black;


        }
        .sliderh1{
            font-family:Merriweather,serif;
            font-size:45px;
           

        }
        .p1{
            overflow:auto;
            font-size:22px;
            font-size:1.25rem;
            line-height: 1.8;
            color:lightslategray;

        }
        .p{
              font-size:1.25rem;
              color:lightslategray;
              line-height: 1.8;
        }
        .padl{
            padding-left:20px;
        }
        .con_grid{
            margin-top:70px;
            width:100%;
            height:200px;
            display:flex;
            flex-direction:row;
            flex-wrap:wrap;
            background-color:black;
            column-gap:30px;
            justify-content:center;
        }

        .grid{
            width:370px;
            height:500px;
            background-color: rgb(251,251,251);
            justify-content:center;
             box-shadow: 2px 7px 5px lightslategray;
        }
        .tophead{

            margin-top:100px;
            /*background-color:#fc052e;*/
            background-color:black;
            text-align:center;
            color:white;
        }
        .h1{
            font-size:40px;
            padding-top:20px;
            font-family:Merriweather,serif;
        }
        .img{
            margin-top:30px;
            width:80%;
            height:282px;
        }
        .name{
            width:80%;
            height:160px;
            background-color:#F2F2F2;
            margin-left:36px;
            margin-top:10px;
        }
        .he{
            font-family:Montserrat, sans-serif !important;
            color:black;
              line-height: 3.0em;
            
        }
        .h3{
            color:black;
            font-family:Montserrat, sans-serif !important;
        }a{
             text-decoration:none;
             color:white;
             font-size:22px;
         }
         a:hover{
             text-decoration:none;
             /*color:rgba(202,240,250,255);*/   
             font-size:22px;
             text-shadow: 1px 1px 2px black, 0 0 25px red, 0 0 5px red;
         }
       
      
   </style>

</head>
       <body>
           <div class="con">
               <div class="nav">
                   <ul>
                       <li><a href="Home.aspx">Home</a></li>
                       <li><a href="Home.aspx#call">Property</a></li>
                       <li><a href="#">About</a></li>
                       <li><a href="CarTour.aspx">News</a></li>
                       <li><a href="Login.aspx">Login</a></li>
                   </ul>
               </div>
               
               <div class="cross">
                 <center>  <h1 class="title">Cherishing Moments in Every Corner</h1></center>
               </div>
           </div>

           <div class="content" id="hi">

               <div class="left">
                   <p class="p">about us</p>
                   <h1 class="sliderh1">What We Belive</h1>
                   <p class="p1"> we believe that the car review experience should be more than just a summary of features and technical specifications. We believe that every car has a unique personality that should be brought to life through expert analysis, insightful commentary, and authentic reviews</p>
               </div>

               <div class="right">
                   <%--<p class="p padl">about us</p>
                   <h1 class="sliderh1 padl">What We Belive</h1>--%>
                   <p class="p1 padl">We also believe in transparency and honesty when it comes to our reviews. We do not accept any incentives or compensation from manufacturers or dealerships, ensuring that our reviews are entirely independent and objective.<br /><br />Ultimately, we believe that our reviews can help potential car buyers make informed decisions when purchasing a vehicle. By providing accurate and unbiased information, we hope to make the car buying process easier and less stressful for our readers.</p>
               </div>

            </div>

           <div class="tophead">
               <h1 class="h1">Meet Our Leaders</h1>
           <div class="con_grid" id="grid">
               <div class="grid">
                   <image class="img" src="image/dhruv1.jpeg"></image>
                   <div class="name">
                       <h2 class="he">Dhruv Patel</h2>
                       <h3 class="h3">Founder & CEO</h3>
                       <ul><li><a href="https://instagram.com/dhruv_patel_.07?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="typcn:social-facebook" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li><li><a href="https://instagram.com/dhruv_patel_.07?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="mdi:twitter" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li><li><a href="https://instagram.com/dhruv_patel_.07?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="uim:instagram" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li></ul>

                   </div>
               </div>
            <%--one Complete--%>

               <div class="grid">
                   <image class="img" src="image/vishal.jpeg"></image>
                   <div class="name">
                       <h2 class="he">Vishal Desai</h2>
                       <h3 class="h3">CMO</h3>
                       <ul><li><a href="https://instagram.com/vishal__2011?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="typcn:social-facebook" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li><li><a href="https://instagram.com/vishal__2011?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="mdi:twitter" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li><li><a href="https://instagram.com/vishal__2011?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="uim:instagram" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li></ul>

                   </div>
               </div>


               <div class="grid">
                   <image class="img" src="image/uttam2.jpg"></image>
                   <div class="name">
                       <h2 class="he">Purvanshu Patel</h2>
                       <h3 class="h3">CFO</h3>
                       <ul><li><a href="https://instagram.com/patelpurvanshu_5707?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="typcn:social-facebook" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li><li><a href="https://instagram.com/patelpurvanshu_5707?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="mdi:twitter" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li><li><a href="https://instagram.com/patelpurvanshu_5707?igshid=YmMyMTA2M2Y="><span class="iconify" data-icon="uim:instagram" style="color: #00B98E;" data-width="35" data-height="35"></span></a></li></ul>

                   </div>
               </div>
               <%--top Head Close--%>
               </div>
               </div>


    <script>
        window.onscroll = function () { myFunction() };

        function myFunction() {
            if (document.documentElement.scrollTop > 340) {
                document.getElementById("hi").className = "check";
            }
           
            
        }
    </script>
</body>
</html>
