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
public class Register extends HttpServlet {

    
    HttpSession session;
    
    private static final long serialVersionUID=1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
                try {
                     String name=request.getParameter("name");
        String user=request.getParameter("uname");
        String pass=request.getParameter("pass");
        
        String mobile=request.getParameter("mno");
         String city=request.getParameter("city");
          String email=request.getParameter("email");
           String state=request.getParameter("state");
           
           String address=request.getParameter("address");
           
        
              
  
                    
               
 
    Database ob = null; 
        try {
            ob = new Database();
            ob.register(name,user,pass,mobile,city,email,state,address);
             response.sendRedirect("farmer/register.jsp?id=2");
             
     
        } catch (Exception ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            
              response.sendRedirect("farmer/register.jsp?id=1");
             
        }
         } catch (Exception e) {
                }
   }
               
       
     
    }

   
