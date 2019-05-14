
package database.util;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class DatabaseProvider {
    private Connection connection;
    public void initialize() throws Exception{
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
        } catch (Exception e) {
        
        throw e;
        }
    }
    
    public Connection connect(String userName,String password) throws Exception {
   
    connection=null;
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/emandi",userName ,password);
        } catch (Exception e) {
            throw e;
        }
        return connection;
    }
}
