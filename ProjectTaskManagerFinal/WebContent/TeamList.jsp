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
<%@page import="objects.Team" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/styleteamlist.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/TeamList.js"></script>
<title>TeamList</title>
</head>

<body onload="init()">

      <div id="list">
        <form id="list_team"  action="AddTeam">
        <label for="teamname" id="teamlbl">Teams &nbsp</label><br><br>  
	
		
		<%
	DBManager db=new DBManager();
	ArrayList<Team> teams=db.getTeams();	
	%>
    <select name="decisionTeam" multiple id="selTeam"  onchange="TeamFunc();">
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
       
       
        </form>
       
      </div>

<div id="edit">
        <form id="edit_team"  action="EditTeam">
        <label for="teamname">Team name&nbsp</label><input type="text" name="teamname" class="placeholder" placeholder="teamname" id="team_name"><br><br>
        <label for="teamleader">Team leader&nbsp</label><input type="text" name="teamleader" class="placeholder" placeholder="teamleader" id="team_leader"><br><br>
         <label for="membernumber">Number of members&nbsp</label><input type="number"  id="membern" min="1" max="15" name="membernumber" class="placeholder" placeholder="membernumber" ><br><br>
		 <input type="submit" value="Edit team"> 
	
		   </form>
       
      </div>

  <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
   <button class="home-btn" type="button" onclick="goToAdministration()">Home</button>
</body>
</html>