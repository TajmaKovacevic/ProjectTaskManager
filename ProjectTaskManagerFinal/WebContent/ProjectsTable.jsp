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
<%@page import="objects.Project" %>
<%@ page import="java.util.ArrayList" %>
<html >
<head>
<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Projects</title>
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
	<script type="text/javascript" src="Scripts/Developer.js"></script>
	</head>
	<body>
	
	<%
	DBManager db=new DBManager();
	ArrayList<Project> projects=db.getProjects();
	
	
	
%>
	
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				
				
			</div>
			<header>
				<h1>Project Task Manager<span>Previewing and managing profiles</span></h1>	
				
			</header>
			
		
			
			<div class="component">
				<h2>Projects</h2>
				
				<table>
				
			
				
					<thead>
						<tr>
							<th>Project name</th>
							<th>Manager</th>
							<th>Team</th>
							<th>Estimate</th>
							<th>Description</th>
							
							<th></th>
						</tr>
					</thead>
					<tbody>
					
						 <% for (int i =0; i < projects.size(); i++) { 
	
	String name=projects.get(i).getName();
	int estimate=projects.get(i).getEstimate();
	String description=projects.get(i).getDescription();
	int manager=projects.get(i).getManager_id();
	int team=projects.get(i).getTeam_id();

	
	%>
					
						<tr><td class="user-name"><%= projects.get(i).getName()%></td><td class="user-email"><%= projects.get(i).getManager_id() %></td><td class="user-phone"><%= projects.get(i).getTeam_id()%></td><td class="user-mobile"><%= projects.get(i).getEstimate()%></td><td class="user-name"><%= projects.get(i).getDescription()%></td><td><img onclick="goToIndex()" src="http://newharvest.ca/wordpress/wp-content/uploads/2012/12/icon_grey_seo.png" alt="" border=3 height=25 width=25 ></img></td></tr>
						<%} %>
					</tbody>
				</table>
				
 <a href="#" id="projectButton">Add project</a>	
			</div>
			
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
	</body>
</html>


