<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.sun.xml.internal.txw2.Document"%>
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
<html >
<head>
<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>People</title>
		<meta name="description" content="Sticky Table Headers Revisited: Creating functional and flexible sticky table headers" />
		<meta name="keywords" content="Sticky Table Headers Revisited" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="Styles/normalize.css" />
		<link rel="stylesheet" type="text/css" href="Styles/demo.css" />
		<link rel="stylesheet" type="text/css" href="Styles/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
	
	<%
	DBManager db=new DBManager();
	ArrayList<User> users=db.getUsers();
	
	
	
%>
	
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				
				
			</div>
			<header>
				<h1>Project Task Manager<span>Previewing and managing profiles</span></h1>	
				
			</header>
			<div class="component">
				<h2>People</h2>
				
				<table>
				
			
				
					<thead>
						<tr>
							<th>Username</th>
							<th>Password</th>
							<th>Name</th>
							<th>Last name</th>
							<th>Contacte</th>
							<th>Gender</th>
							<th>Role</th>
						</tr>
					</thead>
					<tbody>
					
						<% for (int i =0; i < users.size(); i++) { 
	
	String name=users.get(i).getName();
	String username=users.get(i).getUsername();
	String password=users.get(i).getPassword();
	String lastName=users.get(i).getLastName();
	String contact=users.get(i).getContact();
	String email=users.get(i).getContact();
	String gender=users.get(i).getGender();
	int userRole=db.getUserRole(name,lastName);
	//String role=users.get(i)
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	String ur=Integer.toString(userRole);
	someList.add(7, ur);
	
	%>
					
						<tr><td class="user-name"><%= users.get(i).getUsername()%></td><td class="user-email"><%= users.get(i).getPassword()%></td><td class="user-phone"><%= users.get(i).getName()%></td><td class="user-mobile"><%= users.get(i).getLastName()%></td><td class="user-name"><%= users.get(i).getContact()%></td><td class="user-name"><%= users.get(i).getGender()%></td><td class="user-name"><%= ur %></td></tr>
						<%} %>
					</tbody>
				</table>
				
 <a href="#" class="myButton">Add user</a>	
			</div>
			
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
	</body>
</html>


