<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div>
        <form id="list_project"  action="AddProject">
        <label for="pname" id="plbl">Projects &nbsp</label><br><br>  
		<select size="3"	name="decision2" multiple id="sel">
		<option selected>Project1</option>
		<option>Project2</option>
		<option>Project3</option>
		</select>
        </form> 
</div>

<div id="edit">
        <form id="edit_project"  action="EditProject">
             <label for="project">Project name&nbsp;</label><input type="text" name="project" class="placeholder" placeholder="project name">
        <label for="manager">Manager&nbsp;</label>
        <select>
  		<option value="man1">Manager1</option>
  		<option value="man2">Manager2</option>
 		<option value="man3">Manager3</option>
  		<option value="man4">Manager4</option>
		</select>
		<br>
        <label for="team">Team&nbsp;</label>
        <select>
  		<option value="team1">Team1</option>
  		<option value="team2">Team2</option>
 		<option value="team3">Team3</option>
  		<option value="team4">Team4</option>
		</select>
		<br>
        <label for="estimate">Estimate time&nbsp;</label><input type="number" name="estimate" min="1" max="1000" step="1" value ="1">
        <label for="desc">Description&nbsp;</label><input type="textarea" name="desc" rows="4" cols="50">
        
        <br/><input type="submit" value="Save changes">
        </form>
 </div>
 
 <div id="taskdiv">
        <form id="list_tasks"  action="AddProject">
        <label for="tname" id="tlbl">Tasks &nbsp</label><br><br>  
		<select size="3"	name="decision2" multiple id="sel">
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