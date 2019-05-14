package admin;


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
public class Login extends HttpServlet {

    
    HttpSession session;
    
    private static final long serialVersionUID=1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
               try {
                    
                
        String user=request.getParameter("email");
        
        String pass=request.getParameter("psw");
 database.app.Database ob=new Database();
     
        if(ob.check(user,pass)){
              session.setAttribute("user", user);
       
        
        
        response.sendRedirect("admin/index.jsp");
        
           
        }
        else
        {
            
            response.sendRedirect("admin/login.html");
            
        }
                }
                catch (Exception e) {
                }
       
    
    }

   
}
