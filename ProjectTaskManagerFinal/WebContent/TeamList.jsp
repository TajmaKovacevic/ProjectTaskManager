<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<select size="3"	name="decision2" multiple id="sel">
		<option selected>Team1
		<option>Team 2
		<option>Team 3
		<option>Team 4
		<option>Team 5
		</select>

        </form>
       
      </div>

<div id="edit">
        <form id="edit_team"  action="EditTeam">
        <label for="teamname">Team name&nbsp</label><input type="text" name="teamname" class="placeholder" placeholder="teamname"><br><br>
        <label for="teamleader">Team leader&nbsp</label><input type="text" name="teamleader" class="placeholder" placeholder="teamleader"><br><br>
         <label for="membernumber">Number of members&nbsp</label><input type="number"  id="membern" min="1" max="15" name="membernumber" class="placeholder" placeholder="membernumber"><br><br>
		 <input type="submit" value="Edit team"> 
	
		   </form>
       
      </div>

  <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
   <button class="home-btn" type="button" onclick="goToAdministration()">Home</button>
</body>
</html>