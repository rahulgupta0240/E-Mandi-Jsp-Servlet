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
public class BookSlot extends HttpServlet {

    
    HttpSession session;
    
    private static final long serialVersionUID=1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
                try {
                     String sid1=request.getParameter("sid");
                     
                     String fid1=request.getParameter("fid");
        String snum=request.getParameter("snumber");
       int snumber=Integer.parseInt(snum);
             int sid=Integer.parseInt(sid1);
             int fid=Integer.parseInt(fid1);
      
       
    Database ob = null; 
        try {
            ob = new Database();
            
                        ob.bookSlot(sid,fid,snumber);
                         snumber--;
            ob.updateSlotNumber(sid,snumber);
           response.sendRedirect("farmer/register.jsp?id=7&fid="+fid+"&sid="+sid+"");
      

             response.sendRedirect("farmer/viewslot.jsp?fid="+fid+"&sid="+sid+"");
            
     
        } catch (Exception ex) {
            Logger.getLogger(BookSlot.class.getName()).log(Level.SEVERE, null, ex);
                response.sendRedirect("farmer/register.jsp?id=6");
      
        }
         } catch (Exception e) {
                }
   }
               
       
     
    }

   
