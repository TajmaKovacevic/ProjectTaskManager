<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<title>Project Task Manager-Home</title>
<meta name="description" content="slick Login">
<meta name="author" content="Webdesigntuts+">
<script type="text/javascript" src="Scripts/Manager.js"></script>
<link rel="stylesheet" type="text/css" href="Styles/stylemanager.css" />
</head>
<body>
<div>
<h2 id="welcomeMessage">Welcome <%=session.getAttribute("uid")%>!</h2>
</div>
<p id="mainTitle_manager">Manage Projects and Tasks<p/>
<div id="buttonHolder">

  <a href="#" class="button cross" onclick="goToTeams()"></a>
  <a href="#" class="button heart" onclick="goToProjects()"></a>

	 
</div>
  <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
</body>
</html>