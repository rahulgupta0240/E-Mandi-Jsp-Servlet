package admin;

import database.app.Database;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeleteSlot extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id=request.getParameter("id");
        
         Database ob = null; 
        try {
            ob = new Database();
            ob.deleteSlot(id);
             response.sendRedirect("admin/viewslot.jsp");
            
     
        } catch (Exception ex) {
            Logger.getLogger(AddUpdate.class.getName()).log(Level.SEVERE, null, ex);
              response.sendRedirect("admin/addslot.jsp");
             
        }
     
       
    }

}
