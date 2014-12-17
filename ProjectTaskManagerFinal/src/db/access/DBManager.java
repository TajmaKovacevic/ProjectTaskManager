package db.access;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class DBManager {
	Connection connection;
    PreparedStatement statement;
    
    public DBManager(){
    	connection=null;
    	statement=null;
    }
    /*Opens the connection*/
    public boolean openConnection(){
    	 try
	        { 
    		 Class.forName("com.mysql.jdbc.Driver");
	            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ptmdb", "root", "");
	            return true;
	        }
	        catch (Exception e) {
	            e.printStackTrace();
	            return false;
	        }
    }
   
    /*Closes the connection*/
    public boolean closeConnection(){
    	try {
            statement.close();
            connection.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean getUser(String username, String password){
    	if(openConnection()){
    		 try{
    			int users=0;
    			final String SQL_SELECT = "SELECT COUNT(*) FROM USER WHERE username=? and password=?";
    			statement=connection.prepareStatement(SQL_SELECT);
    			statement.setString(1, username);
    		    statement.setString(2, password);
    		    ResultSet rs=statement.executeQuery();
    		    while(rs.next())
	            {
    		    	users=rs.getInt(1);
	            }
    		    if(users>0)
    		    	return true;
    		    else
    		    	return false;
    		    
    		 }
    		 catch (Exception e){
    			e.printStackTrace();
 	            return false;
    		 	}
    		 finally{
    			 closeConnection();
    		 }    		 
    	}
    	else{
    		return false;
    	}
    }
    
    public boolean hasUserPermission(String username,int permisssion){
    	if(openConnection()){
   		 try{
   			int permission=0;
   			final String SQL_SELECT = "SELECT COUNT(*) FROM user JOIN userpermission ON user.id=userpermission.user_id WHERE user.username=?  AND userpermission.permission_id=?";
   			statement=connection.prepareStatement(SQL_SELECT);
   			statement.setString(1, username);
   		    statement.setInt(2, permisssion);
   		    ResultSet rs=statement.executeQuery();
   		    while(rs.next())
	            {
   		    	permission=rs.getInt(1);
	            }
   		    if(permission>0)
   		    	return true;
   		    else
   		    	return false;
   		    
   		 }
   		 catch (Exception e){
   			e.printStackTrace();
	            return false;
   		 	}
   		 finally{
   			 closeConnection();
   		 }    		 
   	}
   	else{
   		return false;
   	}
    	
    }
    }
    

