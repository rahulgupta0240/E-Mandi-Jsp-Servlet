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
public class UpdateCrop extends HttpServlet {

    
    HttpSession session;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
                try {
                     String id=request.getParameter("id");
        String user=request.getParameter("crop_name");
        String price=request.getParameter("price");
        
        String pass=request.getParameter("new_price");
        
              
  
                    
               
 
    Database ob = null; 
        try {
            ob = new Database();
            ob.updateCrop(id,user,pass,price);
             response.sendRedirect("admin/viewcrop.jsp");
            
     
        } catch (Exception ex) {
            Logger.getLogger(AddUpdate.class.getName()).log(Level.SEVERE, null, ex);
              response.sendRedirect("admin/addcrop.jsp");
             
        }
         } catch (Exception e) {
                }
   }
               
       
     
    }

   
