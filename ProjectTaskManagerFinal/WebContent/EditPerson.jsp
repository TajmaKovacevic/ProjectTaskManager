<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<%@page import="objects.User" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/stylepersons.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/PersonEdit.js"></script>
<title>Persons</title>
</head>

<body>

 <div>
        <form id="list_person"  action="AddPerson">
        <label for="pname" id="plbl">Persons &nbsp;</label><br><br>  
		<select name="decision2" multiple id="sel">
		<% DBManager db=new DBManager();
		 List<User> users= db.getUsers();
		
		%>
		
		</select>
        </form> 
      </div>

      <div>
        <form id="edit_person"  action="EditPerson">
        <label for="username">Username&nbsp;</label><input type="text" name="username" class="placeholder" placeholder="username"><br>
        <label for="password">Password&nbsp;</label><input type="text" name="password" class="placeholder" placeholder="password"><br>
        <label for="firstname">First name&nbsp;</label><input type="text" name="firstname" class="placeholder" placeholder="first name"><br>
        <label for="lastname">Last  name&nbsp;</label><input type="text" name="lastname" class="placeholder" placeholder="last name"><br>
        <label for="gender">Gender&nbsp;</label><input type="radio" name="gender" value="Male" class="placeholder" placeholder="gender">Male&nbsp;&nbsp;
        <input type="radio" name="gender" value="Female" class="placeholder" placeholder="gender">Female<br>
        <label for="idnum">ID number&nbsp;</label><input type="text" name="idnum" class="placeholder" placeholder="id number"><br>
        <label for="email">E-mail&nbsp;</label><input type="email" name="email" class="placeholder" placeholder="email"><br>
        <input type="submit" value="Save changes">
        </form>
       
      </div>
</body>
</html>