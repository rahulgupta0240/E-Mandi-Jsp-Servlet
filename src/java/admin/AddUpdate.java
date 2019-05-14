package admin;



import database.app.Database;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@javax.servlet.annotation.MultipartConfig

public class AddUpdate extends HttpServlet {
    private final String UPLOAD_DIRECTORY = "D:\\Emandi\\Emandi\\web\\admin\\updates";
    private final int maxSize=50*1024;
    private File file;
    boolean check=false;
    private static final long serialVersionUID=1L;
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title="";
        String des="";
       String date="";
        String name="";
        
       
      

        if(ServletFileUpload.isMultipartContent(request)){

            try {

                List<org.apache.commons.fileupload.FileItem> multiparts = new ServletFileUpload(

                                         new DiskFileItemFactory()).parseRequest(request);

               

                for(org.apache.commons.fileupload.FileItem item : multiparts){

                                        if(item.isFormField()){
                                            
                                              if(item.getFieldName().equals("title"))
                        {
                        title=item.getString();
                        }
  if(item.getFieldName().equals("description"))
                        {
                        des=item.getString();
                        }
   if(item.getFieldName().equals("date"))
                        {
                        date=item.getString();
                        }




                    }

                    
                    if(!item.isFormField()){

                        name = new File(item.getName()).getName();

                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));

                    }

                }
               //File uploaded successfully
check=true;
 

             
                  
                
               request.setAttribute("message", "File Uploaded Successfully");

            } catch (Exception ex) {
                check=false;
               request.setAttribute("message", "File Upload Failed due to " + ex);
                

            }
            
          
            
    } 
   if(check)
   {
    Database ob = null; 
        try {
            ob = new Database();
            ob.addUpdate(title, des, date,name);
             response.sendRedirect("admin/viewnews.jsp");
            
     
        } catch (Exception ex) {
            Logger.getLogger(AddUpdate.class.getName()).log(Level.SEVERE, null, ex);
              response.sendRedirect("admin/addnews.jsp");
             
        }
   }
            }

}
