
package database.app;
import database.util.DatabaseProvider;
import java.sql.*;
public class Database {
   private DatabaseProvider databaseProvider;
   private Statement statement;
    private ResultSet resultSet;
    
        Connection connection;
    
     public Database() throws Exception
    {
        databaseProvider=new DatabaseProvider();
        databaseProvider.initialize();
        try {
            connection= databaseProvider.connect("root", "");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    }
     public boolean check(String user,String pass) throws Exception
    {
     resultSet=null;
    statement=connection.createStatement();
 
        
    try {
            resultSet=statement.executeQuery("select * from admin where username='" + user + "' && password='" + pass + "'");
        } catch (Exception e) {
            throw e;
        }
        if (resultSet.next()){
       return true;
       
    }
        
         return false;
    }
     
       public void addUpdate(String title,String des,String date,String file) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into news (title,description,date,img) values('" + title + "','"+ des +"','"+ date +"', '"+ file +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
    public ResultSet getUpdate() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from news");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
    public ResultSet updateNews(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from news where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   

   public boolean updateNews(String id,String title,String description,String date,String file) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            if(statement.execute("update news set title='" +title + "',description= '"+description +"',date= '"+date +"', img='"+file +"' where id='"+ id +"'")){
            
                
                return true;
            }
       statement.close();
        
        } catch (Exception e) {
            throw e;
            
       
        }
       
        return false;
         
    } 
public void deleteNews(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from news where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
 public void addCrop(String title,String des,String file) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into men (title,description,file) values('" + title + "','"+ des +"', '"+ file +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
  public ResultSet getRates() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from rates");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }

    public ResultSet updateCrop(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from rates where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   

   public boolean updateCrop(String id,String crop_name,String new_price,String price) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            if(statement.execute("update rates set crop_name='" +crop_name + "',price= '"+new_price +"',new_price= '"+price +"' where id='"+ id +"'")){
            
                
                return true;
            }
       statement.close();
        
        } catch (Exception e) {
            throw e;
            
       
        }
       
        return false;
         
    } 
   public void deleteCrop(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from rates where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
public void register(String name,String uname,String pass,String mobile,String city,String email,String state,String address) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into register (name,user,pass,mobile,city,state,email,address) values('" + name + "','"+ uname +"','"+ pass +"', '"+ mobile +"','" + city + "','" + state + "','" + email + "','" + address + "')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }

     public boolean checkLogin(String user,String pass) throws Exception
    {
     resultSet=null;
    statement=connection.createStatement();
 
        
    try {
            resultSet=statement.executeQuery("select * from register where user='" + user + "' && pass='" + pass + "'");
        } catch (Exception e) {
            throw e;
        }
        if (resultSet.next()){
       return true;
       
    }
        
         return false;
    }
  public void addSlot(String name,String date,String slot,int snumber) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into slot (date,time,slots,name) values('" + date + "','"+ slot +"','"+ snumber +"', '"+ name +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
  public ResultSet getSlot() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from slot");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }

    public ResultSet updateSlot(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from slot where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
    
   public boolean updateSlot(String id,String c_name,String date,String time,int slot) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            if(statement.execute("update slot set name='" +c_name + "',date= '"+date +"',time= '"+time +"',slots= '"+slot +"' where id='"+ id +"'")){
            
                
                return true;
            }
       statement.close();
        
        } catch (Exception e) {
            throw e;
            
       
        }
       
        return false;
         
    } 
    
   public void deleteSlot(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from slot where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
 public ResultSet checkSlot(String c_name,String date,String time) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from slot where name='" + c_name + "' AND date='" + date + "' AND time='" + time + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
public ResultSet getFarmer(String farmer) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from register where user='" + farmer + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   

   public boolean updateSlotNumber(int id,int snumber) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            if(statement.execute("update slot set slots='" +snumber + "' where id='"+ id +"'")){
            
                
                return true;
            }
       statement.close();
        
        } catch (Exception e) {
            throw e;
            
       
        }
       
        return false;
         
    } 
  public void bookSlot(int sid,int fid,int snumber) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into transaction (sid,fid,snumber) values('" + sid + "','"+ fid +"','"+ snumber +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
  
  public ResultSet getSlotDetails(int fid) throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("Select slot.date,slot.time,slot.name,register.name,transaction.snumber from transaction,slot,register where register.id='"+fid+"' and transaction.sid=slot.id and transaction.fid='"+fid+"' order by transaction.id desc" );
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
  public ResultSet getFarmerDetails() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from register");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
 public ResultSet getUser(String user) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from register where user='" + user + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
public boolean updateProfile(String id,String name,String pass,String mobile,String city,String state,String email,String address) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            if(statement.execute("update register set name='" +name + "',pass= '"+pass +"',mobile= '"+mobile +"',city= '"+city +"',state= '"+state +"',email= '"+email +"',address= '"+address +"' where id='"+ id +"'")){
            
                
                return true;
            }
       statement.close();
        
        } catch (Exception e) {
            throw e;
            
       
        }
       
        return false;
         
    } 

  public ResultSet getSlotDetails() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("Select slot.date,slot.time,slot.name,register.name,transaction.snumber from transaction,slot,register where transaction.sid=slot.id and transaction.fid=register.id order by transaction.id desc" );
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
}
