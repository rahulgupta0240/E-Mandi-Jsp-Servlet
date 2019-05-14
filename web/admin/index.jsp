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
  %>	<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Emandi || Admin</title>
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
  <body style="background-image: url('../images/bg.jpg');">
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
                    <li class="active" ><a href="index.jsp">Home</a></li>
                    <li class="has-children">
                      <a href="#">Crop Rates</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="addcrop.jsp">Add New Crop</a></li>
                        <li><a href="viewcrop.jsp">Update Crop Price</a></li>
                       
                      </ul>
                    </li>
                       <li class="has-children">
                      <a href="#">News & Updates</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="addnews.jsp">Add News</a></li>
                        <li><a href="viewnews.jsp">Update News</a></li>
                       
                      </ul>
                    </li>
                        
                        <li class="has-children">
                      <a href="#">Slots</a>
                      <ul class="dropdown arrow-top">
                       
                        <li><a href="addslot.jsp">Add New Slot</a></li>
                        <li><a href="viewslot.jsp">Update Slot</a></li>
                        <li><a href="viewbookedslot.jsp">View Booked Slot</a></li>
                      </ul>
                    </li>
                    <li><a href="farmer.jsp">Farmers Details</a></li>
                    
                       <li><a href="../Logout"><span class="d-inline-block p-3 bg-primary text-white btn btn-primary">Logout</span></a></li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    <div class="slide-one-item home-slider owl-carousel">
      
      <div class="site-blocks-cover inner-page overlay" style="background-image: url(../images/hd1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h1 class="font-secondary font-weight-bold text-uppercase">A Farmer Works So The World Can Eat</h1>
              <span class="caption d-block text-white">You Will Love Our Service</span>
            </div>
          </div>
        </div>
      </div> 
         <div class="site-blocks-cover inner-page overlay" style="background-image: url(../images/hd2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h1 class="font-secondary font-weight-bold text-uppercase">Farmer</h1>
              <span class="caption d-block text-white">You Will Love Our Service</span>
            </div>
          </div>
        </div>
      </div>  
        <div class="site-blocks-cover inner-page overlay" style="background-image: url(../images/mandi17.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h1 class="font-secondary font-weight-bold text-uppercase">If You Ate Today Thank A Farmer</h1>
              <span class="caption d-block text-white">You Will Love Our Service</span>
            </div>
          </div>
        </div>
      </div> 
        <div class="site-blocks-cover inner-page overlay" style="background-image: url(../images/banner1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-8" data-aos="fade">
              <h1 class="font-secondary font-weight-bold text-uppercase">A Farmer Works So The World Can Eat</h1>
              <span class="caption d-block text-white">An Online Booking Slots</span>
            </div>
          </div>
        </div>
      </div>  
    </div>

    

    
    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12"><h2 class="text-uppercase">We Are Trusted Helper For Farmer</h2></div>
        </div>
        <div class="row mb-5">
          <div class="col-md-12">
            <img src="../images/banner2.jpg" alt="image" class="img-fluid">
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 ml-auto">
            <p>म० प्र० राज्य कृषि विपणन बोर्ड, के गठन का प्रमुख उद्देश्य प्रदेश में स्थापित कृषि उपज मण्डी समितियों के कामकाज के व्यवस्थित संचालन, मण्डी समितियों के माध्यम से अधिनियम या उसके अधीन बनाए गए नियमों को प्रभावी ढंग से लागू करना एवं उन पर नियंत्रण रखना है। मध्‍यप्रदेश भारत की वाणिज्यिक गतिविधियों के केंद्र में स्थित होने से यह भारत के सभी प्रमुख कृषि बाजार से एक आसान दूरी पर स्थित है।. कृषि उत्‍पादन के विपणन में उत्‍पादक कृषकों के हितों को सर्वोपरि रखने की राज्‍य शासन की नीति रही है।</p>
          </div>
          <div class="col-md-4">
            <p>कृषि उत्‍पादन के नियमित एवं सर्वांगीण विकास के लिये राष्‍ट्रीय कृषि आयोग की अनुशंसा के आधार पर मध्‍यप्रदेश राज्‍य कृषि विपणन बोर्ड के गठन का प्रावधान वर्ष 1973 में मण्‍डी अधिनियम में किया गया है। वर्ष 1973 से सतत रुप से प्रदेश की कृषि उपज मण्डियों के विकास के लिये मण्‍डी बोर्ड उद्वेश्‍य के लिये सतत प्रयत्‍नशील है।</p>
          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <p class="mb-5"><img src="../images/mp.jpg" alt="Image" class="img-fluid"></p>
          </div>
          <div class="col-lg-5 ml-auto">
           <h2>अनेकता में एकता प्रदेश की अनेक बहुआयामी खूबियों में से एक है तथा अनुभव के लिये यहॉं की संस्‍कृति अपने आप में एक मिसाल है।</h2>
          </div>
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
                    <li><a href="addcrop.jsp">Add Crops Rates</a></li>
                    <li><a href="addnews.jsp">Add New News</a></li>
                    <li><a href="addslot.jsp">Add New Slots</a></li>
                       <li><a href="../Logout">Logout</a></li>
                  </ul>
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Services</h3>
                  <ul class="list-unstyled">
                    <li><a href="farmer.jsp">Farmer Profiles</a></li>
                    <li><a href="viewbookedslot.jsp">Booked Slots</a></li>
                     <li><a href="viewnews.jsp">View News</a></li>
                     <li><a href="viewcrop.jsp">View Crop Rates</a></li>
                    
                    <li><a href="viewslot.jsp">Check Slot</a></li>
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
    </footer>
  </div>

  <script src="../js/jquery-3.3.1.min.js"></script>
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

