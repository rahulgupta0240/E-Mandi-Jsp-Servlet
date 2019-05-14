package farmer;


import database.app.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class Farmer_Login extends HttpServlet {

    
    HttpSession session;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
               try {
                    
                
        String user=request.getParameter("un");
        
        String pass=request.getParameter("pw");
 database.app.Database ob=new Database();
     
        if(ob.checkLogin(user,pass)){
              session.setAttribute("user", user);
       
        
        
        response.sendRedirect("farmer/index.jsp");
        
           
        }
        else
        {
            
              response.sendRedirect("farmer/register.jsp?id=8");
            
        }
                }
                catch (Exception e) {
                }
       
    
    }

   
}
