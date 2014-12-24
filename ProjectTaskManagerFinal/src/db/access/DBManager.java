package db.access;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import objects.User;


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
    public List<User> getUsers(){
    	if(openConnection()){
    		 try{
    			List<User> users=null;
    			final String SQL_SELECT = "SELECT * FROM USER";
    			statement=connection.prepareStatement(SQL_SELECT);
    		    ResultSet rs=statement.executeQuery();
    		    while(rs.next())
	            {
    		    	User u=new User();
    		    	u.setUsername(rs.getString(1));
    		    	u.setUsername(rs.getString(2));
    		    	u.setUsername(rs.getString(3));
    		    	u.setUsername(rs.getString(4));
    		    	u.setUsername(rs.getString(5));
    		    	u.setUsername(rs.getString(6));
    		    	users.add(u);
    		    	}
    		 }
    		 catch (Exception e){
    			e.printStackTrace();
 	            return null;
    		 	}
    		 finally{
    			 closeConnection();
    		 }    		 
    	}
    	return null;
    }
    
    public boolean insertUser(String username, String password, String name,String lastname,String contact, String gender){
    	if(openConnection()){
    		 try{
    			final String SQL_INSERT = "INSERT INTO user (username, password, name, lastname, contact,gender) VALUES (?, ?, ?, ?, ?, ?)";
    			statement=connection.prepareStatement(SQL_INSERT);
    			statement.setString(1, username);
    		    statement.setString(2, password);
    		    statement.setString(3, name);
    		    statement.setString(4, lastname);
    		    statement.setString(5, contact);
    		    statement.setString(6, gender);
    		    statement.executeUpdate();
    		    return true;
    		    
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
    

