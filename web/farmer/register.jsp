<%-- 
    Document   : register
    Created on : 15 Apr, 2019, 12:35:28 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
     <%   int id=Integer.parseInt(request.getParameter("id"));
  
if(id==1)
{
       %>
                         <script type="text/javascript">
                             
                             alert ("Sorry! Username is Already Taken ");
                             window.location="register.html";
                         </script>
<%
}
 
else if(id==2)
{
       %>
                         <script type="text/javascript">
                             
                             alert ("Your Registration is Successful ");
                             window.location="login.html";
                         </script>
<%
}

else if(id==3)
{
       %>
                         <script type="text/javascript">
                             
                             alert ("You Are Successfully Logged Out ");
                             window.location="login.html";
                         </script>
<%
}

else if(id==4)
{
       %>
                         <script type="text/javascript">
                             
                             alert ("Something Wrong Happend. Update Profile Again ");
                             window.location="profile.jsp";
                         </script>
<%
}


else if(id==5)
{ %>
     


       
                         <script type="text/javascript">
                             
                             alert ("Profile Updated Successfully ");
                             window.location="profile.jsp";
                         </script>
                                 
  <%
}


else if(id==6)
{ %>
     


       
                         <script type="text/javascript">
                             
                             alert ("Something Wrong Happend! Book Slot Again ");
                             window.location="bookslot.jsp";
                         </script>
                                 
                            <%     }




else if(id==7)
{   int fid=Integer.parseInt(request.getParameter("fid"));
 int sid=Integer.parseInt(request.getParameter("sid"));


                            %>
     


       
                         <script type="text/javascript">
                             
                             alert ("Slot Successfully Booked ");
                             window.location="viewslot.jsp?fid=<%=fid%>&sid=<%=sid%>";
                         </script>
                                 
                            <%     }

                            else if(id==8)
{

                            %>
     


       
                         <script type="text/javascript">
                             
                             alert ("Invalid Username or Password ");
                             window.location="login.html";
                         </script>
                                 
                            <%     }
                            %>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                 <title>Emandi || Register</title>
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
        
        <link rel="stylesheet" type="text/css" href="../css/login1.css"/>
       
   <script src="../js/login.js"></script> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="C:\Users\gagan\Documents\NetBeansProjects\emandi\web\css\login1.css" />
    <script src="C:\Users\gagan\Documents\NetBeansProjects\emandi\web\js\login.js"></script>
</head>
<body>
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
                    <li class="active"><a href="../index.jsp">Home</a></li>
 
                    <li><a href="../crop.jsp">Mandi Rates</a></li>
                   
                    <li><a href="../news.jsp">NewsFeed</a></li>
                    <li><a href="../about.html">About Us</a></li>
                    <li><a href="../contact.html">Contact Us</a></li>
                    <li><a href="login.html"><span class="d-inline-block p-3 bg-primary text-white btn btn-primary">Login/Register</span></a></li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
          
    
    
    <div class="login-wrap" style="margin-bottom: 40px;">
    <h2>Sign Up</h1>
    <div class="form">
         <form action="../Register" method="post" >

             <input type="text" placeholder="Name" name="name" required/><br>
        <input type="text" placeholder="User Name" name="uname" required/><br>
        <input type="password" placeholder="Password" required name="pass"/><br>
       <input type="text" placeholder="Mob. nO."required  name="mno"/><br>
        <input type="email" placeholder="E-mail" required name="email"/><br>
        <input type="text" placeholder="City" required name="city"/><br>
        <input type="text" placeholder="State" required name="state"/><br>
        <textarea name="address" id="message" required cols="10" rows="5" class="form-control" placeholder=" Enter Address"></textarea>
            </br>
         <input type="Submit" value="Register" class="btn btn-primary text-white px-4 py-2" style="margin-left: 30px;"/><br>
       
        </br>
      
        <a href="login.html"> <p > Already have an account? Login </p></a>
         </form>
    </div>
    </div>
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