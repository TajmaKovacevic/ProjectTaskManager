<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/style2.css" />
<script type="text/javascript" src="Scripts/Administration.js"></script>
<title>Project Task Manager-Home</title>
</head>
<body>

<div>
<h2 id="welcomeMessage">Welcome <%=session.getAttribute("uid")%>!</h2>
</div>
<p id="mainTitle">Manage Your Projects & Team<p/>
<div id="buttonHolder">

  <a href="#" class="button tick" onclick="goToPersons()"></a>
  <a href="#" class="button cross" onclick="goToTeams()"></a>
  <a href="#" class="button heart" onclick="goToProjects()"></a>
	 
</div>
  <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
</body>
</html>