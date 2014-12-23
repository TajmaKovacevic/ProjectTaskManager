<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/style2.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<title>Project Task Manager-Home</title>
<meta name="description" content="slick Login">
<meta name="author" content="Webdesigntuts+">
<script type="text/javascript" src="Scripts/Projects.js"></script>

</head>
<body>
<div>
<h2 id="welcomeMessage">Welcome <%=session.getAttribute("uid")%>!</h2>
</div>
<div id="buttonHolder">
<p id="add-project">Add a new project<p/>
<div id="arrow">&#8600;</div>
<a href="#" class="button newProject" onclick="goToCreateNewProject()"></a>
<p id="mainTitle_manager">Preview and edit projects<p/>
<div id="arrow-right">&#8601;</div>
  <a href="#" class="button previewProject" onclick="goToPreviewProjects()"></a>
  
</div>
  <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
</body>
</html>