package admin;


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
public class AddSlot extends HttpServlet {

    
    HttpSession session;
    
    private static final long serialVersionUID=1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
                try {
                     String id=request.getParameter("crop_name");
        String user=request.getParameter("date");
        String price=request.getParameter("slot");
        
        String pass=request.getParameter("snumber");
        
              int snumber=Integer.parseInt(pass);
  
                    
               
 
    Database ob = null; 
        try {
            ob = new Database();
            ob.addSlot(id,user,price,snumber);
             response.sendRedirect("admin/viewslot.jsp");
            
     
        } catch (Exception ex) {
            Logger.getLogger(AddUpdate.class.getName()).log(Level.SEVERE, null, ex);
              response.sendRedirect("admin/addslot.jsp");
             
        }
         } catch (Exception e) {
                }
   }
               
       
     
    }

   
