package farmer;

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
public class Logout1 extends HttpServlet {

    HttpSession session;
    
    private static final long serialVersionUID=1L;
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session=request.getSession();
        session.removeAttribute("user");
        //PrintWriter out=response.getWriter();
       //response.setContentType("text/html");
//out.println("<html><head>"+ 
//"<script language=\"text/javascript\">"+"alert(\"success\")"+ "</script></head>"+"</html>");
         response.sendRedirect("farmer/register.jsp?id=3");
            
    }

    
}
