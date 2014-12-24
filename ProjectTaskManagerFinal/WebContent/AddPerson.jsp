<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/stylepersons.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/Persons.js"></script>
<title>Persons</title>
</head>

<body >

 <div id="add">
        <form id="add_person"  action="AddPerson" onsubmit="init()">
        <label for="username">Username&nbsp;</label><input type="text" id="username" name="username" class="placeholder" placeholder="username" onblur="validateUsername()">
        <label for="password">Password&nbsp;</label><input type="text" name="password" class="placeholder" placeholder="password" id="password">
        <label for="firstname">First name&nbsp;</label><input type="text" name="firstname" class="placeholder" placeholder="first name" id="firstname">
        <label for="lastname">Last  name&nbsp;</label><input type="text" name="lastname" class="placeholder" placeholder="last name" id="lastname">
        <label for="gender">Gender&nbsp;</label><input type="radio" name="gender" value="Male" class="placeholder" placeholder="gender">Male&nbsp;&nbsp;
        <input type="radio" name="gender" value="Female" class="placeholder" placeholder="gender">Female<br/>
        <label for="email">E-mail&nbsp;</label><input type="email" name="email" class="placeholder" placeholder="email"><br>
        <br/><input type="submit" value="Add new person">
        </form>
      </div>
 <button class="exit-btn-3" type="button" onclick="goToIndex()" >Logout</button>
 
</body>
</html>