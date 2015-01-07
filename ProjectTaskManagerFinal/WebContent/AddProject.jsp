<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.sun.xml.internal.txw2.Document"%><html>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="java.util.List" %>
<%@page import="db.access.DBManager" %>
<%@page import="objects.User" %>
<%@page import="objects.Team" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/styleprojects.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/Projects.js"></script>
<title>Persons</title>
</head>
<body onload="init()">
<%
	DBManager db=new DBManager();
	ArrayList<User> managers=db.getFreeManagers();	
	ArrayList<Team> teams=db.getFreeTeams();	
%>

      <div id="add">
        <form id="add_project"  action="AddProject">
             <label for="project">Project name&nbsp;</label><input type="text" name="project" class="placeholder" placeholder="project name">
        <label for="manager">Manager&nbsp;</label>
        <select name="manager" id="managersel">
        <% for (int i =0; i < managers.size(); i++) { 
        
	String name=managers.get(i).getName();
	String username=managers.get(i).getUsername();
	String password=managers.get(i).getPassword();
	String lastName=managers.get(i).getLastName();
	String contact=managers.get(i).getContact();
	String email=managers.get(i).getContact();
	String gender=managers.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= managers.get(i).getUsername() %></option>
<%} %>
  </select>
		<br>
        <label for="team">Team&nbsp;</label>
       <select name="teams" id="teamsel">
        <% for (int i =0; i < teams.size(); i++) { 
        	
        	
        	String name=teams.get(i).getName();
        	String leader=teams.get(i).getManage();
        	int number=teams.get(i).getNumberMembers();

        	List<String> someList = new ArrayList<String>();
        	someList.add(0,name);
        	String leaderName=db.getUserNamebyID(leader);
        	someList.add(1,leaderName);
        	someList.add(2,Integer.toString(number));
	
	%>
    <option value=" <%= someList %> " ><%= teams.get(i).getName() %></option>
<%} %>
  </select>
		<br>
        <label for="estimate">Estimate time&nbsp;</label><input type="number" name="estimate" min="1" max="1000" step="1" value ="1">
        <label for="desc">Description&nbsp;</label><input type="textarea" name="desc" rows="4" cols="50">
        
        <br/><input type="submit" value="Add new project">
        </form>
       
      </div>
 <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
</body>
</html>