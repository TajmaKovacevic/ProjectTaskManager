<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/styleteams.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/Teams.js"></script>
<title>Teams</title>
</head>
<body>
	<%
	DBManager db=new DBManager();
	ArrayList<User> leaders=db.getFreeTeamLeaders();
	ArrayList<User> users=db.getFreeUsers();
	
%>
 <button class="exit-btn-34" type="button" onclick="goToIndex()" >Logout</button>
        <form id="add_team"  action="AddTeam" onsubmit="init()">
        <div id="createTeam" >Create a new Team</div>
        <div id="result">
        <label for="teamname">Team name&nbsp</label>
        <input id="teamname" type="text" name="teamname" class="placeholder" placeholder="team name" onblur="validateName()"><br><br>
        <label for="teamleader">Team leader&nbsp</label>
        <select name="teamleader" id="teamleader">
        <% for (int i =0; i < leaders.size(); i++) { 
	
	String name=leaders.get(i).getName();
	String username=leaders.get(i).getUsername();
	String password=leaders.get(i).getPassword();
	String lastName=leaders.get(i).getLastName();
	String contact=leaders.get(i).getContact();
	String email=leaders.get(i).getContact();
	String gender=leaders.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= leaders.get(i).getUsername() %></option>
<%} %>
        </select>
        <br><br>
        <label for="membernumber">Number of members&nbsp</label>
        <input type="number" onchange="number()" id="member_number" min="1"  max="5"  name="membernumber" class="placeholder" placeholder="number of members"><br><br>	 
        <input type="submit" value="Add new team" id="sub1">
        </div>
        <div id="add_members">Choose team members</div>
        <div id="members_of_team">
        <select name="m1" class="newDropdownMenu" id="newDropdownMenu1" style="display:none">
          <% for (int i =0; i < users.size(); i++) { 
	
	String name=users.get(i).getName();
	String username=users.get(i).getUsername();
	String password=users.get(i).getPassword();
	String lastName=users.get(i).getLastName();
	String contact=users.get(i).getContact();
	String email=users.get(i).getContact();
	String gender=users.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= users.get(i).getUsername() %></option>
<%} %>
        </select>
        <select name="m2" class="newDropdownMenu" id="newDropdownMenu2" style="display:none">
          <% for (int i =0; i < users.size(); i++) { 
	
	String name=users.get(i).getName();
	String username=users.get(i).getUsername();
	String password=users.get(i).getPassword();
	String lastName=users.get(i).getLastName();
	String contact=users.get(i).getContact();
	String email=users.get(i).getContact();
	String gender=users.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= users.get(i).getUsername() %></option>
<%} %>
        </select>
        <select name="m3" class="newDropdownMenu" id="newDropdownMenu3" style="display:none">
          <% for (int i =0; i < users.size(); i++) { 
	
	String name=users.get(i).getName();
	String username=users.get(i).getUsername();
	String password=users.get(i).getPassword();
	String lastName=users.get(i).getLastName();
	String contact=users.get(i).getContact();
	String email=users.get(i).getContact();
	String gender=users.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= users.get(i).getUsername() %></option>
<%} %>
        </select>
        <select name="m4" class="newDropdownMenu" id="newDropdownMenu4" style="display:none">
          <% for (int i =0; i < users.size(); i++) { 
	
	String name=users.get(i).getName();
	String username=users.get(i).getUsername();
	String password=users.get(i).getPassword();
	String lastName=users.get(i).getLastName();
	String contact=users.get(i).getContact();
	String email=users.get(i).getContact();
	String gender=users.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= users.get(i).getUsername() %></option>
<%} %>
        </select>
        <select name="m5" class="newDropdownMenu" id="newDropdownMenu5" style="display:none">
          <% for (int i =0; i < users.size(); i++) { 
	
	String name=users.get(i).getName();
	String username=users.get(i).getUsername();
	String password=users.get(i).getPassword();
	String lastName=users.get(i).getLastName();
	String contact=users.get(i).getContact();
	String email=users.get(i).getContact();
	String gender=users.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= users.get(i).getUsername() %></option>
<%} %>
        </select>
        </div>
       
        </form>

</body>
</html>


