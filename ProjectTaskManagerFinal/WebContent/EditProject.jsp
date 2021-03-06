<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%@page import="objects.Team" %>
<%@page import="objects.User" %>
<%@page import="objects.Project" %>
<%@page import="objects.Task" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/styleprojects.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/Projects.js"></script>
<title>Projects</title>
</head>
<body>
 <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
   <button class="home-btn" type="button" onclick="goToAdministration()">Home</button>
<div>
        <form id="list_project"  action="AddProject"><br>
        
        
        <label for="pname" id="plbl">Projects &nbsp</label><br><br>  
		<%
	DBManager db=new DBManager();
	ArrayList<Project> projects=db.getProjects();

	%>
    <select name="decisionProject" multiple id="selProject"  onchange="TeamFunc();">
     <% for (int i =0; i < projects.size(); i++) { 
	
	String name=projects.get(i).getName();
	int estimate=projects.get(i).getEstimate();
	String description=projects.get(i).getDescription();
	int manager=projects.get(i).getManager_id();
	int team=projects.get(i).getTeam_id();

	List<String> someList = new ArrayList<String>();
	someList.add(0,name);
	someList.add(1,Integer.toString(manager));
	someList.add(2,Integer.toString(team));
	someList.add(3,Integer.toString(estimate));
	someList.add(4,description);
	
	int pr_id=db.getProjectIDbyName(name);
	//someList.add(4,Integer.toString(pr_id));
	ArrayList<Task> tasks=db.getTasksByPid(pr_id);
	%>
       
       <option value=" <%= someList %> " ><%= projects.get(i).getName() %></option>
<%} %>
</select>
        </form> 
</div>

<div id="edit">
        <form id="edit_project"  action="EditProject">
             <label for="project">Project name&nbsp;</label><input type="text" name="project" class="placeholder" placeholder="project name" id="project">
        <label for="manager">Manager&nbsp;</label>
        <select id="selM">
  		<option value="man1">Manager1</option>
  		<option value="man2">Manager2</option>
 		<option value="man3">Manager3</option>
  		<option value="man4">Manager4</option>
		</select>
		<br>
        <label for="team">Team&nbsp;</label>
        <select id="selTe">
  		<option value="team1">Team1</option>
  		<option value="team2">Team2</option>
 		<option value="team3">Team3</option>
  		<option value="team4">Team4</option>
		</select>
		<br>
        <label for="estimate">Estimate time&nbsp;</label><input type="number" name="estimate" min="1" max="1000" step="1" value ="1" id="estimate">
        <label for="desc">Description&nbsp;</label><input type="textarea" name="desc" rows="4" cols="50" id="desc">
        
        <br><br/><input type="submit" value="Save changes">
        </form>
 </div>
 
 <div id="taskdiv">
        <form id="list_tasks"  action="AddProject">
        <label for="tname" id="tlbl">Tasks &nbsp</label><br><br>  
		<select size="3"	name="decision2" multiple id="selT">
		<option selected>Task1</option>
		<option>Task2</option>
		<option>Task3</option>
		</select>
		<br/><input type="button" id="addt" value="Add new task" onClick="location.href='AddTask.jsp'">&nbsp;
		<input type="button" id="editt" value="Show task" onClick="location.href='EditTask.jsp'">
        </form> 
</div>
</body>
</html>