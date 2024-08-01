<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Real_Estate.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css1/nav.css" rel="stylesheet" />
    <link href="css1/index.css" rel="stylesheet" />
    <link href="css1/grid.css" rel="stylesheet" />
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <%--<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>--%>

    <title>Unlock Home</title>
 <style>
     @media print{
         .plan{
             display:none;
         }
     }
 </style>
    </head>
    <body>
     <nav id="nav">
        <div class="left_nav">
            <img class="logo" src="image/logo2.png" />
        </div>
        <div class="right_nav">
            <ul class="ul1">
                <li class="li1"><a class="a1 active" href="home.aspx">HOME</a></li>
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
        <%-- Title --%>
        <div class="name1">
            <div class="prop_name">
                <h1><%= Name[0] %></h1>
              
                <table class="tab1" style="width:70%">
                    <tr class="tab_tr"><th><%=type[0] %></th><th><%=Category[0] %></th><th>PROPERTY ID:<%=pid[0] %></th><th><iconify-icon icon="carbon:view" style="color: gray;" width="30" height="30"></iconify-icon></th><th><%=Views[0] %></th></tr>
                </table>
            </div>
            <div class="prop_price">
                <h1>Price:&#x20B9;<span  id="prices"><%=price[0] %></span></h1>
              <table class="tab1 tab2" style="border-spacing:5px;"> <tr class="tab_tr1 tr1"><th class="tr1 th"  style="cursor:pointer;">  <iconify-icon class="print" id="print1" onclick="window.print()" icon="uil:print" style="color: black;" width="30" height="30"></iconify-icon></th><th class="tr1 th"><button id="btn" class="btn2" onclick="location.href='BookNow.aspx'" >Book Now</button></th></tr></table>
            </div>
        </div>
        <%-- Image  --%>
        <div class="slider">
            <div class="slider_left w3-content w3-display-container">
                <% for (int i = 0; i < image.Length-1; i++) {

%>
                <img class="mySlides" src="<%=image[i] %>" style="width:100%;" />
              <%--  <img class="mySlides" src="image/h2.jpg" style="width:100%;"  />
                <img class="mySlides" src="image/h3.jpg" style="width:100%;" />--%>
                <%} %>

                <button class="w3-left " onclick="plusDivs(-1)">&#10094;</button>
                <button class="w3-right " onclick="plusDivs(+1)">&#10095;</button>
            </div>
           <%-- <div class="slider_right">

            </div>--%>
        </div>
        <%-- Slider End --%>
        <%-- Grid Start --%>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
      <% for (int i = 0; i < image.Length - 6; i++)
          {
%> 
    <img src="<%=image[i] %>" style="width:100%"/>
   
    <%} %>
  
  </div>
  <div class="column">
      <% for (int i = 6; i < image.Length; i++)
          {
%> 
       <img src="<%=image[i] %>" style="width:100%"/>
      <%} %>
    
  </div>  
 
</div>

        <%-- Grid End --%>
        <%-- Details of House --%>
        <div class="description">
            <div class="house">
                <h1 class="featurs_h1">Property features</h1>
                <%--<p class="featurs_p">Lorem ipsum dolor sit amet, homero debitis temporibus in mei, at sit voluptua antiopam hendrerit. Lorem epicuri eu per. Mediocrem torquatos deseruisse te eum commodo.</p>--%>
                <h3 class="h2">Property details</h3>
               
                <table class="tab_details">
                    <tr class="details"><td class="details ico"><span class="iconify" data-icon="material-symbols:square-foot-sharp" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Size</td><td class="fd fd1"><%=Size[0] %>sqft</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray"/></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="cil:bathroom" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Bathroom</td><td class="fd fd1"><%=Bathroom[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="mdi:bedroom-outline" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Bedroom</td><td class="fd fd1"><%=bedroom[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="material-symbols:floor" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Floor</td><td class="fd fd1"><%=floor[0] %><sup>th</sup></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="streamline:shopping-catergories-sofa-decoration-furniture-interior-design-couch-sofa-decorate" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Furnishing</td><td class="fd fd1"><%=Furnish[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="iwwa:year" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Construction Year</td><td class="fd fd1"><%= cyear[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                       <tr class="details"><td class="details ico"><span class="iconify" data-icon="streamline:interface-edit-brush-3-brush-color-colors-design-paint-painting-roller-rolling" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Renovation</td><td class="fd fd1"><%=ryear[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>
                </table>
            </div>

            <div class="other_details">
                <h1 onclick="test()" class="calc_title">EMI Calculator</h1>
                <label class="lbl">Price</label><br />
                <input type="text" class="emi" id="price" placeholder="Price" readonly="True"/><br />
                <label class="lbl">Down Payment</label><br />
                 <input type="text" class="emi" id="dp" placeholder="Down Payment"/><br />
                <label class="lbl">Year</label><br />
                <input type="text" class="emi" id="year" placeholder="Year"/><br />
                <label class="lbl">Rate(%)</label><br />
                <p class="rate1"><output id="dis">0%</output></p>
                <input type="range" max="30" min="0" class="emi" id="rate" placeholder="Rate"/>
                <p class="rate2"><output id="cal">0</output></p>

            </div>
        </div>

        <%-- Property utility --%>
        <div class="prop_utility">
         <div class="house1">
                <h3 class="h2">Property utility</h3>
               
                <table class="tab_details">
                    <tr class="details"><td class="details ico"><span class="iconify" data-icon="mingcute:air-condition-open-line" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Air conditioner </td><td class="fd fd1"><%=ac[0]%></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray"/></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="bytesize:telephone" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Intercom</td><td class="fd fd1"><%=intercome[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="iconoir:elevator" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Elevator</td><td class="fd fd1"><%=elevator[0]%></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="svg-spinners:wind-toy" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Ventilation</td><td class="fd fd1"><%=Ventilation[0]%></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="svg-spinners:wifi" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Wifi</td><td class="fd fd1"><%=wifi[0]%></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                        <tr class="details"><td class="details ico"><span class="iconify" data-icon="game-icons:fireplace" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Fireplace</td><td class="fd fd1"><%=fireplace[0]%></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                       <tr class="details"><td class="details ico"><span class="iconify" data-icon="lucide:cable" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Cable TV</td><td class="fd fd1"><%=cable[0]%></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>
                </table>
            </div>
            <%--<div class="tour">--%>
                <%--<h2 class="hh2">Schedule tour</h2>--%>
                 <form id="form4" runat="server">
                   <%--  <label class="lbl2">Name</label><br />
                     <asp:TextBox CssClass="asp_form" ID="name" runat="server" placeholder="Your name"></asp:TextBox><br />
                     <label class="lbl2">Email</label><br />
                     <asp:TextBox CssClass="asp_form" ID="email" runat="server" placeholder="Your email"></asp:TextBox><br />
                     <label class="lbl2">Phone</label><br />
                     <asp:TextBox CssClass="asp_form" ID="phone" runat="server" placeholder="Your phone"></asp:TextBox><br />
                     <label class="lbl2">Message</label><br />
                     <asp:TextBox CssClass="asp_form" ID="msg" runat="server" placeholder="Message"></asp:TextBox><br />
                     <asp:Button ID="me" runat="server" Text="Make enquiry" />--%>
                     </form>
            <%--</div>--%>
        </div>

          <div class="prop_utility">
         <div class="house1">
                <h3 class="h2">Outdoor features</h3>
               
                <table class="tab_details">
                    <tr class="details"><td class="details ico"><span class="iconify" data-icon="mdi:car-brake-parking" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Parking </td><td class="fd fd1"><%=parking[0]%></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray"/></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="maki:garden" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Garden</td><td class="fd fd1"><%=garden[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="material-symbols:pool-sharp" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Swimming Pool</td><td class="fd fd1"><%=pool[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="game-icons:cctv-camera" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">CCTV</td><td class="fd fd1"><%=cctv[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="game-icons:security-gate" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Security</td><td class="fd fd1"><%=security[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="arcticons:cifra-club" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Club house</td><td class="fd fd1"><%=clubhouse[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                       <tr class="details"><td class="details ico"><span class="iconify" data-icon="iconoir:gym" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Gym</td><td class="fd fd1"><%=gym[0] %></td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>
                </table>
            </div>

              <div class="tour tour_custom">
            <h2 class="near_h2">What's nearby?</h2>

                    <div class="near">
              <%-- <table>
                   <tr><td class="ami">School: 0.5km</td><td class="ami">Hospital, medical: 1.3km</td><td></td></tr>
                   <tr><td class="ami">University: 0.5km</td><td class="ami">Metro stationl: 1.3km</td><td></td></tr>
                   <tr><td class="ami">Grocery center: 0.5km</td><td  class="ami">Gym, wellness: 1.3km</td><td></td></tr>
                   <tr><td class="ami">Market: 0.5km</td><td class="ami">City Center: 1.3km</td><td></td></tr>

               </table>--%>
                 <table class="tab_details t1" style="width:100%;">
                    <tr class="details"><td class="details ico"><span class="iconify" data-icon="fluent-emoji-high-contrast:school" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">School</td><td class="fd fd1"><%=school[0] %> Km</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray"/></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="mingcute:hospital-line" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Hospital,medical</td><td class="fd fd1"><%=hospital[0] %> Km</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="uil:metro" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Metro station</td><td class="fd fd1"><%=busstop[0] %> km</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="mdi:university-outline" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Univercity</td><td class="fd fd1"><%=univercity[0] %> km</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                  <tr class="details"><td class="details ico"><span class="iconify" data-icon="map:gym" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Gym, wellness</td><td class="fd fd1"><%=gym_near[0] %> km</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                     <tr class="details"><td class="details ico"><span class="iconify" data-icon="map:shopping-mall" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">Market</td><td class="fd fd1"><%=market[0]%> km</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>

                       <tr class="details"><td class="details ico"><span class="iconify" data-icon="material-symbols:local-mall-outline-sharp" style="color: gray;" data-width="30" data-height="30"></span></td><td class="details fd">City Mall</td><td class="fd fd1"><%=mall[0] %> km</td></tr>
                    <tr><td colspan="3"><hr width="100%" color="gray" /></td></tr>
                </table>
            </div>
              </div>
              </div>
            <%--<hr style="margin-left:5%;" color="gray" width="90%" size="5"/>--%>
        <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d470029.4907297672!2d72.25008569347868!3d23.01990207203543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1695025011668!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>--%>
    
        <%-- Floor Plans --%>
        <div class="floor-plan">
            <h2 class="plan">Floor Plans</h2>
            <img class="floor-plan-image" src="<%=image[10] %>" />
        </div>

              <%-- Footer  --%>

        <footer class="footer-distributed"> 
			<div class="footer-left">
				<h3>Unlock<span>Home</span></h3>
				<p class="footer-links">
					<a href="#" class="link-1">Home</a>
					
					<a href="#">Home</a>
				
				
					<a href="#">About</a>

					
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">Unlock Home ©2023</p>
			</div>

			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>Ahmedabad</span> Gujarat, India</p>
				</div>
				<div>
					<i class="fa fa-phone"></i>
					<p>+91 9879879879</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:unlockhome07@gmail.com">support@unlockhome.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					Welcome to our property marketplace, where we empower your dreams of buying, selling, or renting with unmatched expertise and a personal touch..
				</p>

				<%--<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>--%>

			</div>

		</footer>

<script>
    var stat = 0;
    var stat1 = 0;
    var a = 0;

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

    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        if (n > x.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = x.length };
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex - 1].style.display = "block";
    }
    getPrice();
    function test() {
        var a = document.getElementById("rate").value;
    }
    document.getElementById("rate").addEventListener('input', ranges);
    function ranges() {
        var val = document.getElementById("rate").value;
        document.getElementById("dis").innerHTML = val + "%";
        //var d = calculate(val);
        //alert(d);
        calculate(val);
    }

    function calculate(a){
        var a1 = document.getElementById("price").value;
        var b1 = document.getElementById("year").value;
        var dp = document.getElementById("dp").value;
        var final = a1 - dp;
        var a2 = parseInt(a1);
        var b2 = parseInt(b1);
        var year = b2 * 12; 
        var c2 = parseInt(a);
        var c = a2 + year + c2;
        var inte = (final * (c2 * 0.01)) / year;
        var emi = ((final / year) + inte).toFixed(2);
        document.getElementById('cal').innerHTML ="&#x20B9;"+emi;

        

    }
    function getPrice() {
        let val = document.getElementById('prices').textContent;
        document.getElementById('price').value = val;

    }

    


    // Maps
 
    
</script>

      
     </body>
</html>
