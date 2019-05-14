package farmer;


import database.app.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class UpdateProfile extends HttpServlet {

    
    HttpSession session;
    
    private static final long serialVersionUID=1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
                try {
                     String id=request.getParameter("id");
                     
        String name=request.getParameter("name");
        String mobile=request.getParameter("mobile");
        
        String pass=request.getParameter("pass");
        String city=request.getParameter("city");
         String state=request.getParameter("state");
        String email=request.getParameter("email");
        
        String address=request.getParameter("address");
       
              
  
                    
               
 
    Database ob = null; 
        try {
            ob = new Database();
            ob.updateProfile(id,name,pass,mobile,city,state,email,address);
              response.sendRedirect("farmer/register.jsp?id=5");
             
     
        } catch (Exception ex) {
            Logger.getLogger(UpdateProfile.class.getName()).log(Level.SEVERE, null, ex);
              response.sendRedirect("farmer/register.jsp?id=4");
             
        }
         } catch (Exception e) {
                }
   }
               
       
     
    }

   
