<%-- 
    Document   : index
    Created on : 11 Nov, 2018, 6:26:14 PM
    Author     : admin
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="database" scope="session" class="database.app.Database" />
<%
  if(session.getAttribute("user")!= null)
  {
       
       
  %>
<!DOCTYPE html>
<html lang="en">
  <head>
           <title>Emandi || Mandi Rates</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../images/favicon.ico" type="image/x-icon">
         
    <link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="../fonts/icomoon/style.css">

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <link rel="stylesheet" href="../css/jquery-ui.css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    
    
    
    <link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="../css/aos.css">

    <link rel="stylesheet" href="../css/style.css">
   
    
  </head>
  <body style="background-image: url('images/bg.jpg');">
    <% 
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
                    %> 
  <div class="site-wrap">

    

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="row align-items-center">
            <div class="col-2">
            <img src="../images/emandi.png" class="mb-0 site-logo img-responsive" style="height: 100px; width:200px;">              
              </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                     <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li ><a href="index.jsp">Home</a></li>
                     <li class="active"><a href="viewrates.jsp">Crop Rates</a></li>
                     <li><a href="viewslot.jsp">View Booked Slot</a></li>
                   
                     <li><a href="bookslot.jsp">Book Slot</a></li>
                    <li><a href="profile.jsp">Profile</a></li>
                    
                       <li><a href="../Logout1"><span class="d-inline-block p-3 bg-primary text-white btn btn-primary">Logout</span></a></li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  
   
   
    <div class="site-blocks-cover inner-page overlay" style="background-image: url(../images/hd2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center" data-aos="fade">
          <h1 class="text-uppercase">Mandi Rates</h1>
          <span class="caption d-block text-white"></span>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <h2 class="site-section-heading text-center text-uppercase">Mandsaur Mandi Rates</h2>
          </div>
        </div>
        <div class="row">
              <%
                            
                         ResultSet resultSet=database.getRates();

                         ResultSetMetaData resultSetMeta=resultSet.getMetaData();
        while (resultSet.next()) {      
            %>

          <div class="col-md-4 text-center mb-4">
            <div class="border p-4 text-with-icon " >
              <h2 class="h5 text-uppercase" style="font-weight:700;"><%= resultSet.getString(2)%></h2>
              <p style="font-weight:700;"><%= resultSet.getString(3)%> Rs/Quintal</p>
              <% String a=  resultSet.getString(3);
              int newprice=  resultSet.getInt(5);
          int price= Integer.parseInt(a);
         
              %>   
            
            <%
            if(price>newprice)
            {
                int newp=price-newprice ;
                
            %>
            <p style="color: green;font-weight:700;"><%=newp %> Rs increase than last price</p>
             <%
            }
else {
 int newp=newprice-price ;
                

%>
<p style="color: red;font-weight:700;"><%=newp %> Rs Decrease than last price</p>
<%
}

            %>
             
            </div>
          </div>
              
                      
     <%  
        }
      
                        %>
            
            
         
          
          
         
        

        </div>
      </div>
    </div>

    <div class="py-5 bg-primary">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6 text-center text-md-left mb-3 mb-md-0">
            <h2 class="text-uppercase text-white mb-0">Make Farmer Digital </h2>
          </div>
          <div class="col-md-3 ml-auto text-center text-md-left">
              </div>
        </div>
      </div>
    </div>
<footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
            <p>Our farmers feed the world. They are up before dawn and work till well after sunset. They face any number of challenges they can't control, from too much rain to not enough, from disease to insect infestations.</p>
          </div>
          <div class="col-md-5 ml-auto">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Quick Menu</h3>
                  <ul class="list-unstyled">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="viewrates.jsp">Crops Rates</a></li>
                    <li><a href="bookslot.jsp">Sell Crops</a></li>
                    <li><a href="profile.jsp">View Profile</a></li>
                    <li><a href="viewslot.jsp">View Booked Slot</a></li>
                    <li><a href="../Logout1">Logout</a></li>
                  </ul>
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Services</h3>
                  <ul class="list-unstyled">
                    <li><a href="viewrates.jsp">Crops Price</a></li>
                    <li><a href="viewslot.jsp">Booked Slots</a></li>
                    
                    <li><a href="bookslot.jsp">Book Your Slot</a></li>
                  </ul>
              </div>
            </div>
          </div>

          
          <div class="col-md-2">
            <div class="col-md-12"><h3 class="footer-heading mb-4 text-white">Social Icons</h3></div>
              <div class="col-md-12">
                <p>
                  <a href="#" class="pb-2 pr-2 pl-0"><span class="icon-facebook"></span></a>
                  <a href="#" class="p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="p-2"><span class="icon-instagram"></span></a>
                  <a href="#" class="p-2"><span class="icon-vimeo"></span></a>

                </p>
              </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script>document.write(new Date().getFullYear());</script> All Rights Reserved | Developed with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="#" target="_blank" >Rahul & Gagan</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>n  
  </div>
 <script src="../js/juery-3.3.1.min.js"></script>
  <script src="../js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../js/jquery-ui.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.stellar.min.js"></script>
  <script src="../js/jquery.countdown.min.js"></script>
  <script src="../js/jquery.magnific-popup.min.js"></script>
  <script src="../js/bootstrap-datepicker.min.js"></script>
  <script src="../js/aos.js"></script>

  <script src="../js/main.js"></script>
  </body>
</html>
  <%
      
  }
  else
{
response.sendRedirect("login.html");
}
  
%>
