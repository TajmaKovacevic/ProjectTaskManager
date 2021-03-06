package db.access;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import objects.Project;
import objects.Task;
import objects.Team;
import objects.User;
import java.util.ArrayList;
import java.sql.Statement;


public class DBManager {
	Connection connection;
    PreparedStatement statement;
    Statement stmt;
    ResultSet rs;
    
    public DBManager(){
    	connection=null;
    	statement=null;
    	rs=null;
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
    public ArrayList<User> getUsers(){
    	if(openConnection()){
    		 try{
    			 ArrayList<User> users=new ArrayList<User>();
    			final String SQL_SELECT = "SELECT * FROM USER";
    			statement=connection.prepareStatement(SQL_SELECT);
    		    ResultSet rs=statement.executeQuery();
    		    while(rs.next())
	            {
    		    	User u=new User();
    		    	u.setUsername(rs.getString("username"));
    		    	u.setPassword(rs.getString("password"));
    		    	u.setName(rs.getString("name"));
    		    	u.setGender(rs.getString("gender"));
    		    	u.setContact(rs.getString("contact"));
    		    	u.setLastName(rs.getString("lastname"));
    		    	
    		    	 
    		    	users.add(u);
    		    	}
    		    
    		    return users;
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
    public ArrayList<User> getFreeTeamLeaders(){
    	if(openConnection()){
    		 try{
    			ArrayList<User> users=new ArrayList<User>();
    			final String SQL_SELECT = "SELECT * FROM USER where USER.id NOT IN (SELECT DISTINCT team_lider FROM team)";
    			statement=connection.prepareStatement(SQL_SELECT);
    		    ResultSet rs=statement.executeQuery();
    		    while(rs.next())
	            {
    		    	User u=new User();
    		    	u.setUsername(rs.getString("username"));
    		    	u.setPassword(rs.getString("password"));
    		    	u.setName(rs.getString("name"));
    		    	u.setGender(rs.getString("gender"));
    		    	u.setContact(rs.getString("contact"));
    		    	u.setLastName(rs.getString("lastname"));
    		    	
    		    	 
    		    	users.add(u);
    		    	}
    		    
    		    return users;
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
    
    
    
    
    public ArrayList<User> getFreeManagers(){
    	if(openConnection()){
    		 try{
    			ArrayList<User> users=new ArrayList<User>();
    			final String SQL_SELECT = "SELECT * FROM USER where USER.id NOT IN (SELECT DISTINCT manager_id FROM project)";
    			statement=connection.prepareStatement(SQL_SELECT);
    		    ResultSet rs=statement.executeQuery();
    		    while(rs.next())
	            {
    		    	User u=new User();
    		    	u.setUsername(rs.getString("username"));
    		    	u.setPassword(rs.getString("password"));
    		    	u.setName(rs.getString("name"));
    		    	u.setGender(rs.getString("gender"));
    		    	u.setContact(rs.getString("contact"));
    		    	u.setLastName(rs.getString("lastname"));
    		    	
    		    	 
    		    	users.add(u);
    		    	}
    		    
    		    return users;
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
    
    
    public ArrayList<User> getFreeUsers(){
    	if(openConnection()){
    		 try{
    			ArrayList<User> users=new ArrayList<User>();
    			final String SQL_SELECT = "SELECT * FROM USER where USER.id NOT IN (SELECT DISTINCT user_id FROM team_member)";
    			statement=connection.prepareStatement(SQL_SELECT);
    		    ResultSet rs=statement.executeQuery();
    		    while(rs.next())
	            {
    		    	User u=new User();
    		    	u.setUsername(rs.getString("username"));
    		    	u.setPassword(rs.getString("password"));
    		    	u.setName(rs.getString("name"));
    		    	u.setGender(rs.getString("gender"));
    		    	u.setContact(rs.getString("contact"));
    		    	u.setLastName(rs.getString("lastname"));
    		    	
    		    	 
    		    	users.add(u);
    		    	}
    		    
    		    return users;
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
    
    
    public boolean updateUser(String username, String password, String name,String lastname,String contact, String gender){
    	if(openConnection()){
    		 try{
    			final String SQL_UPDATE = "UPDATE user SET name=?, lastname=?, contact=?, gender=? where username=? and password=?";
    			
    			statement=connection.prepareStatement(SQL_UPDATE);
    			statement.setString(1, name);
    			statement.setString(2, lastname);
    			statement.setString(3, contact);
    			statement.setString(4, gender);
    			statement.setString(5, username);
    			statement.setString(6, password);
       		    stmt.executeUpdate(SQL_UPDATE);
    			
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
    
    
    public int getUserID(){ 
    	
    	if(openConnection()){
      		 try{
      			int userID=0;
      			
      			final String SQL_SELECT = "SELECT id FROM user ORDER BY id DESC LIMIT 1";
      			statement=connection.prepareStatement(SQL_SELECT);
      		    ResultSet rs=statement.executeQuery();
      		  while(rs.next())
	            {
 		    	userID=rs.getInt("id");
	            }
      		  	return userID;
      		 }
      		catch (Exception e){
       			e.printStackTrace();
    	            return 5;//false
       		 	}
       		 finally{
       			 closeConnection();
       		 }    		 
       	}
       	else{
       		return 5; //false
       	}
    }
    
    
  public int getUserIDbyName(String first_name, String last_name){ 
    	
    	if(openConnection()){
      		 try{
      			int userID=0;
      			
      			final String SQL_SELECT = "SELECT id FROM user WHERE name=? and lastname=?";
      			statement=connection.prepareStatement(SQL_SELECT);
      			statement.setString(1, first_name);
      			statement.setString(2, last_name);
      		    ResultSet rs=statement.executeQuery();
      		  while(rs.next())
	            {
 		    	userID=rs.getInt("id");
	            }
      		  	return userID;
      		 }
      		catch (Exception e){
       			e.printStackTrace();
    	            return 5;//false
       		 	}
       		 finally{
       			 closeConnection();
       		 }    		 
       	}
       	else{
       		return 5; //false
       	}
    }
  
  
  
  
  public String getUserNamebyID(String id){ 
    	
    	if(openConnection()){
      		 try{
      			String name="";
      			String lastname="";
      			
      			final String SQL_SELECT = "SELECT name, lastname FROM user WHERE id=?";
      			statement=connection.prepareStatement(SQL_SELECT);
      			statement.setString(1, id);
      			
      		    ResultSet rs=statement.executeQuery();
      		  while(rs.next())
	            {
 		    	name=rs.getString("name");
 		    	lastname=rs.getString("lastname");
	            }
      		  	return name + " " + lastname;
      		 }
      		catch (Exception e){
       			e.printStackTrace();
    	            return "false";//false
       		 	}
       		 finally{
       			 closeConnection();
       		 }    		 
       	}
       	else{
       		return "false"; //false
       	}
    }
  
  
  
    
    
    public boolean insertUserRole(int userID, int roleID){
    	if(openConnection()){
    		 try{
    			
    		    
    			final String SQL_INSERT = "INSERT INTO userpermission (User_id, Permission_id) VALUES (?, ?)";
    			statement=connection.prepareStatement(SQL_INSERT);
    			statement.setInt(1, userID);
    			statement.setInt(2, roleID);
    		    
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
    
    
    	public int getUserRole(String first_name, String last_name){
    		
        	if(openConnection()){
        		 try{
        		    int roleID=0;
        			int userID=getUserIDbyName(first_name, last_name);
        			
        		
        			openConnection();
        			final String SQL_SELECT = "SELECT Permission_id  FROM userpermission WHERE User_id=? ";
        			statement=connection.prepareStatement(SQL_SELECT);
        			statement.setInt(1, userID);
        			ResultSet rs=statement.executeQuery();
            		  while(rs.next())
      	            {
       		    	 roleID=rs.getInt("Permission_id");
      	            }
            		  	return roleID;
        		    
        		 }
        		 catch (Exception e){
        			e.printStackTrace();
     	            return 10;//false
        		 	}
        		 finally{
        			 closeConnection();
        		 }    		 
        	}
        	else{
        		return 10; //false
        	}

        	
    	
    }
    	  public int insertTeam(String name, int teamleader, int number_members){
    	    	if(openConnection()){
    	    		int team_id=0;
    	    		 try{
    	    			//System.out.println("prije inserta");
    	    			final String SQL_INSERT = "INSERT INTO team (name, team_lider, number_members ) VALUES (?, ?,?)";
    	    			statement=connection.prepareStatement(SQL_INSERT);
    	    			statement.setString(1, name);
    	    		    statement.setInt(2, teamleader);
    	    		    statement.setInt(3, number_members);
    	    		    statement.executeUpdate();
    	    		    ResultSet rs=statement.getGeneratedKeys();
    	    		    if (rs.next()){
    	    		        team_id=rs.getInt(1);
    	    		    }
    	    		    //System.out.println("prije inserta");
    	    		    return team_id;
    	    		    
    	    		 }
    	    		 catch (Exception e){
    	    			e.printStackTrace();
    	 	            return team_id;
    	    		 	}
    	    		 finally{
    	    			 closeConnection();
    	    		 }    		 
    	    	}
    	    	else{
    	    		return 0;
    	    	}
    	    }
    	  
    	  
    	  public ArrayList<Team> getTeams(){
    	    	if(openConnection()){
    	    		 try{
    	    			ArrayList<Team> teams=new ArrayList<Team>();
    	    			final String SQL_SELECT = "SELECT * FROM team";
    	    			statement=connection.prepareStatement(SQL_SELECT);
    	    		    ResultSet rs=statement.executeQuery();
    	    		    while(rs.next())
    		            {
    	    		    	Team t=new Team();
    	    		    	t.setName(rs.getString("name"));
    	    		    	t.setManage(rs.getString("team_lider"));
    	    		    	t.setNumberMembers(rs.getInt("number_members"));
    	    		    	teams.add(t);
    	    		    }
    	    		    
    	    		    return teams;
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
    	  
    	  
    	  public ArrayList<Team> getFreeTeams(){
  	    	if(openConnection()){
  	    		 try{
  	    			ArrayList<Team> teams=new ArrayList<Team>();
  	    
  	    			final String SQL_SELECT = "SELECT * FROM team where team.id not in(select distinct team_id from project)" ;
  	    			statement=connection.prepareStatement(SQL_SELECT);
  	    		    ResultSet rs=statement.executeQuery();
  	    		    while(rs.next())
  		            {
  	    		    	Team t=new Team();
  	    		    	t.setName(rs.getString("name"));
  	    		    	t.setManage(rs.getString("team_lider"));
  	    		    	t.setNumberMembers(rs.getInt("number_members"));
  	    		    	teams.add(t);
  	    		    }
  	    		    
  	    		    return teams;
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
    	  
    	  
    	  
    	  
    	  public int getTeamIDbyName(String name){ 
    	    	
    	    	if(openConnection()){
    	      		 try{
    	      			int teamID=0;
    	      			
    	      			final String SQL_SELECT = "SELECT id FROM team WHERE name=? ";
    	      			statement=connection.prepareStatement(SQL_SELECT);
    	      			statement.setString(1, name);
    	      			
    	      		    ResultSet rs=statement.executeQuery();
    	      		  while(rs.next())
    		            {
    	 		    	teamID=rs.getInt("id");
    		            }
    	      		  	return teamID;
    	      		 }
    	      		catch (Exception e){
    	       			e.printStackTrace();
    	    	            return 5;//false
    	       		 	}
    	       		 finally{
    	       			 closeConnection();
    	       		 }    		 
    	       	}
    	       	else{
    	       		return 5; //false
    	       	}
    	    }
    	  
    	  
    	  
    	  public boolean insertProject(String name, int estimate, String desc, int m_id,int t_id){
  	    	if(openConnection()){
  	    		
  	    		 try{
  	    			
  	    			//System.out.println("prije inserta");
  	    			openConnection();
  	    			final String SQL_INSERT = "INSERT INTO project (name, estimate, description, team_id, manager_id ) VALUES (?,?,?,?,?)";
  	    			statement=connection.prepareStatement(SQL_INSERT);
  	    			statement.setString(1, name);
  	    		    statement.setInt(2, estimate);
  	    		    statement.setString(3, desc);
  	    		    statement.setInt(4, t_id);
  	    		    statement.setInt(5, m_id);
  	    		    statement.executeUpdate();
  	    		    
  	    		    
  	    		    //System.out.println("prije inserta");
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
    	  
    	  
    	  public boolean insertTeamMember(int team, int member){
  	    	if(openConnection()){
  	    		 try{
  	    			final String SQL_INSERT = "INSERT INTO team_member (user_id, team_id) VALUES (?, ?)";
  	    			//System.out.println("team"+team+"member"+member);
  	    			
  	    			statement=connection.prepareStatement(SQL_INSERT);
  	    			statement.setInt(1, member);
  	    		    statement.setInt(2, team);
  	    		  
  	    		    statement.executeUpdate();
  	    		   //System.out.println("team"+team+"member"+member);
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
    	  public int getUserIdByUsername(String username){
    		  if(openConnection()){
    	      		 try{
    	      			 
    	      		    
    	      			int userID=0;
    	      			
    	      			final String SQL_SELECT = "SELECT id FROM user WHERE username=? ";
    	      			statement=connection.prepareStatement(SQL_SELECT);
    	      			statement.setString(1, username);
    	      		    ResultSet rs=statement.executeQuery();
    	      		  while(rs.next())
    		            {
    	 		    	userID=rs.getInt("id");
    		            }
    	      		//System.out.println(userID);
    	      		  	return userID;
    	      		 }
    	      		catch (Exception e){
    	       			e.printStackTrace();
    	    	            return 0;//false
    	       		 	}
    	       		 finally{
    	       			 closeConnection();
    	       		 }    		 
    	       	}
    	       	else{
    	       		return 0; //false
    	       	}
    	  }
    	  
    	  public int getProjectIDbyName(String name){ 
  	    	
  	    	if(openConnection()){
  	      		 try{
  	      			int projectID=0;
  	      			
  	      			final String SQL_SELECT = "SELECT id FROM project WHERE name=? ";
  	      			statement=connection.prepareStatement(SQL_SELECT);
  	      			statement.setString(1, name);
  	      			
  	      		    ResultSet rs=statement.executeQuery();
  	      		  while(rs.next())
  		            {
  	 		    	projectID=rs.getInt("id");
  		            }
  	      		  	return projectID;
  	      		 }
  	      		catch (Exception e){
  	       			e.printStackTrace();
  	    	            return 5;//false
  	       		 	}
  	       		 finally{
  	       			 closeConnection();
  	       		 }    		 
  	       	}
  	       	else{
  	       		return 5; //false
  	       	}
  	    }
  	  
    	  public ArrayList<Project> getProjects(){
    	    	if(openConnection()){
    	    		 try{
    	    			 ArrayList<Project> projects=new ArrayList<Project>();
    	    			final String SQL_SELECT = "SELECT * FROM project";
    	    			statement=connection.prepareStatement(SQL_SELECT);
    	    		    ResultSet rs=statement.executeQuery();
    	    		    while(rs.next())
    		            {
    	    		    	Project p=new Project();
    	    		    	p.setName(rs.getString("name"));
    	    		    	p.setEstimate(rs.getInt("estimate"));
    	    		    	p.setDescription(rs.getString("description"));
    	    		    	p.setManager_id(rs.getInt("manager_id"));
    	    		    	p.setTeam_id(rs.getInt("team_id"));
    	    		    	
    	    		    	
    	    		    	 
    	    		    	projects.add(p);
    	    		    	}
    	    		    
    	    		    return projects;
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
    	  
    	  
    	  public ArrayList<Task> getTasksByPid(int pid){
  	    	if(openConnection()){
  	    		 try{
  	    			 ArrayList<Task> tasks=new ArrayList<Task>();
  	    			final String SQL_SELECT = "SELECT * FROM task where project_id=?";
  	    			statement=connection.prepareStatement(SQL_SELECT);
  	    			statement.setInt(1, pid);
  	    		    ResultSet rs=statement.executeQuery();
  	    		    while(rs.next())
  		            {
  	    		    	
  	    		    	Task t=new Task();
  	    		    
  	    		    	t.setName(rs.getString("name"));
  	    		    	t.setEstimate(rs.getInt("estimate"));
  	    		    	t.setDecription(rs.getString("description"));
  	    		    	t.setStatus(rs.getString("status"));
  	    		    	t.setCreated(rs.getDate("created"));
  	    		    	t.setPerson_id(rs.getInt("person_id"));
  	    		    	t.setProject_id(rs.getInt("project_id"));
  	    		    
  	    		    	tasks.add(t);
  	    		    	}
  	    		    
  	    		    return tasks;
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
    
    }
    


