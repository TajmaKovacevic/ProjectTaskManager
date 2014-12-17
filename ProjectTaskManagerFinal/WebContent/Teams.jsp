<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles/styleteams.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://www.modernizr.com/downloads/modernizr-latest.js"></script>
<script type="text/javascript" src="Scripts/Teams.js"></script>
<title>Teams</title>
</head>

<body onload="init()">

<div id="createTeam" style="
    font-family: 'proxima_nova_ltlight', sans-serif;  font-weight: normal;  font-size: 32px;  line-height: 46px;  color: #9D9DA3;  text-shadow: 0 1px 5px rgba(0, 1, 0, 0.3);  
    margin-left: 10%;  margin-top: 3%;
">
Create a new Team
</div>
      <div id="result">
        <form id="add_person"  action="AddTeam" style="margin-left: 30%;
margin-top: -0.5%;">
        <label for="teamname">Team name&nbsp</label><input type="text" name="teamname" class="placeholder" placeholder="teamname"><br><br>
        <label for="teamleader">Team leader&nbsp</label><input type="text" name="teamleader" class="placeholder" placeholder="teamleader"><br><br>
         <label for="membernumber">Number of members&nbsp</label><input type="number"  id="membern" min="1" max="15" name="membernumber" class="placeholder" placeholder="membernumber"><br><br>
		 
			 
		 
		 <script type="text/javascript">
		  
		 
		 var n = document.getElementById("membern");
		 var   r = document.getElementById("add_person");
		 //alert(i);
		 var i=0;
		n.addEventListener("blur", function(e) {
		 i=document.getElementById("membern").value;	
   	
   	   var whereToPut = document.getElementById('add_person');
   	   
   	var newDiv = document.createElement("div"); 
	  var newContent = document.createTextNode("Choose members:"); 
	  newDiv.appendChild(newContent); //add the text node to the newly created div. 
    newDiv.setAttribute('id',"Chmbrs");
	  // add the newly created element and its content into the DOM 
	  whereToPut.appendChild(newDiv);
	  
   	   
   	   
   	   for(j=0; j<i; j++){
       var newDropdown = document.createElement('select');
       newDropdown.setAttribute('id',"newDropdownMenu");
       newDropdown.setAttribute('class', "placeholder");
      // newDropdown.insertAfter(select,submit);
       whereToPut.appendChild(newDropdown);

      
       /*var itemLabel = document.createElement("Label");
       itemLabel.setAttribute("for", newDropdownMenu);
       itemLabel.innerHTML = "Member "+(j+1);
       whereToPut.appendChild(itemLabel);
    // newDropdown.insertBefore(itemLabel, select);
           //Add an option called "Nadina"
  */
           
           
           var optionApple=document.createElement("option");
           optionApple.text="Nadina";
           
           newDropdown.add(optionApple,newDropdown.options[null]);
           
               
           //Add an option called "Melika"
           var optionBanana=document.createElement("option");
           optionBanana.text="Melika";
           newDropdown.add(optionBanana,newDropdown.options[null]);
           r.innerHTML+="<br><br><br>";
          
       
           
   	   }
   		
   	 var saveButton=document.createElement('input');                     //creating the submit button which when clicked will save the value written in the textboxes
     saveButton.type="submit";
     saveButton.name="submitButton";
     saveButton.value="Add new team";
     r.appendChild(saveButton);
   	   
		}, false);
		</script> 

		

        </form>
       
      </div>


 <button class="exit-btn-3" type="button" onclick="goToIndex()">Logout</button>
   <button class="home-btn" type="button" onclick="goToAdministration()">Home</button>


</body>
</html>


