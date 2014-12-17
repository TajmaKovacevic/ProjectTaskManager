<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<title>Project Task Manager-Home</title>
<meta name="description" content="slick Login">
<meta name="author" content="Webdesigntuts+">
<script type="text/javascript" src="Scripts/Persons.js"></script>
<link rel="stylesheet" type="text/css" href="Styles/style2.css" />
<script type="text/javascript" src="Scripts/Persons.js"></script>
</head>
<body>
<div>
<h2 id="welcomeMessage">Welcome <%=session.getAttribute("uid")%>!</h2>
</div>
<div id="buttonHolder">
<p id="add-person">Add a new person<p/>
  <a href="#" class="button newPerson" onclick="goToCreateNewPerson()"></a>
<p id="mainTitle_manager">Preview and edit persons<p/>
  <a href="#" class="button previewPerson" onclick="goToPreviewPersons()"></a>
  
</div>
  <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
</body>
</html>