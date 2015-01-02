var tabLinks = new Array();
var contentDivs = new Array();


function goToAdministration()
{
	
window.location='Administration.jsp';
}

function init(){
 alert("Person is succesefully added!");
} 
  
function init(){
	 alert("Person is succesefully added!");
	} 
    function goToCreateNewPerson(){
        window.location = 'AddPerson.jsp';
       }
    
    function goToPreviewPersons(){
        window.location = 'EditPerson.jsp';
       }

    function goToIndex(){
    	window.location = 'index.jsp';
    }
    
   function validateUsername(){
	   var username = document.getElementById('username').value;
	   if(username=="")
	   {
	   alert("Username should be inserted!");
	   }

   }
    