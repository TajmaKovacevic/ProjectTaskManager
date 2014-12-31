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
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/stylepersons.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/PersonEdit.js"></script>
<title>Persons</title>

 <script type="text/javascript">

   function changeFunc() {
    var selectBox = document.getElementById("sel");
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    
    var parsedData = selectedValue;
    var res = parsedData.split(",");
    document.getElementById("username_id").setAttribute("value",  res[0].slice(2));
    document.getElementById("password_id").setAttribute("value",  res[1]);
    document.getElementById("firstname_id").setAttribute("value",  res[2]);
    document.getElementById("lastname_id").setAttribute("value",  res[3]);
    document.getElementById("gender_id").setAttribute("value",  res[4]);
    document.getElementById("email_id").setAttribute("value",  res[6].slice(0,-2));

   }

  </script>

</head>

<body>

 <div>
        <form id="list_person"  action="EditPerson">
        <label for="pname" id="plbl">Persons &nbsp;</label><br><br>  
			
	<%
	DBManager db=new DBManager();
	ArrayList<User> users=db.getUsers();
	
	
%>
<select name="decision2" multiple id="sel"  onchange="changeFunc();">
<% for (int i =0; i < users.size(); i++) { 
	
	String name=users.get(i).getName();
	String username=users.get(i).getUsername();
	String password=users.get(i).getPassword();
	String lastName=users.get(i).getLastName();
	String contact=users.get(i).getContact();
	String email=users.get(i).getContact();
	String gender=users.get(i).getGender();
	List<String> someList = new ArrayList<String>();
	someList.add(0,username);
	someList.add(1,password);
	someList.add(2,name);
	someList.add(3,lastName);
	someList.add(4,gender);
	someList.add(5,contact);
	someList.add(6,email);
	%>
    <option value=" <%= someList %> " ><%= users.get(i).getUsername() %></option>
<%} %>
</select>	
        </form> 
      </div>

      <div>
        <form id="edit_person"  action="EditPerson" onsubmit="edit()">
        <label for="username">Username&nbsp;</label><input type="text" name="username" class="placeholder" placeholder="username" id="username_id"><br>
        <label for="password">Password&nbsp;</label><input type="text" name="password" class="placeholder" placeholder="password" id="password_id"><br>
        <label for="firstname">First name&nbsp;</label><input type="text" name="firstname" class="placeholder" placeholder="first name" id="firstname_id"><br>
        <label for="lastname">Last  name&nbsp;</label><input type="text" name="lastname" class="placeholder" placeholder="last name" id="lastname_id"><br>
        <label for="gender">Gender&nbsp;</label><input type="radio" name="gender" value="Male" class="placeholder" placeholder="gender" id="gender_id">Male&nbsp;&nbsp;
        <input type="radio" name="gender" value="Female" class="placeholder" placeholder="gender" id="username_id">Female<br>
        <label for="email">E-mail&nbsp;</label><input type="email" name="email" class="placeholder" placeholder="email" id="email_id"><br>
        <input type="submit" value="Save changes">
        </form>
       
      </div>
</body>
</html>