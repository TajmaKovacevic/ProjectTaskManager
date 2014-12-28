<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/styledeveloper.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/Developer.js"></script>
</head>
<body>

<div>
        <form id="list_task"  action="AddTask">
        <label for="pname" id="plbl">Tasks</label><br><br>  
		<select size="3"	name="decision2" multiple id="sel">
		<option selected>Task1
		<option>Task2
		<option>Task3
		</select>
        </form> 
      </div>

<div id="add">
        <form id="add_task"  action="AddTask">
        <label for="task">Task name&nbsp;</label><input type="text" name="task" class="placeholder" placeholder="Task1" readonly>
        <label for="desc">Description&nbsp;</label><input type="textarea" name="desc" rows="4" cols="50" readonly>
        <label for="estimate">Estimate time&nbsp;</label><input type="number" name="estimate" min="1" max="1000" step="1" value ="1">
        <label for="status">Status&nbsp;</label><br>
        <input type="checkbox" name="finished" value="Finished">Finished
		<input type="checkbox" name="expired" value="Expired">Expired
		<input type="checkbox" name="failed" value="Failed">Failed
        <label for="created">Created&nbsp;</label><br><input type="date" name="created" readonly>
		<br>
		<br/><input type="submit" value="Save changes">
        </form>
       
      </div>

</body>
</html>