var tabLinks = new Array();
var contentDivs = new Array();


function goToIndex(){
	window.location = 'index.jsp';
}

function goToAdministration()
{
	
window.location='Administration.jsp';
}

function number(){

	var numbers=document.getElementById("member_number").value;
	
	if(numbers>5){
		alert("Maximum team members is 5!");
		
	}
	else{
		document.getElementById("members_of_team").style.display="block";
		document.getElementById("add_members").style.display="block";
		if(numbers==1){
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="none";
			document.getElementById("newDropdownMenu3").style.display="none";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none";
		}
		if(numbers==2){
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="none";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none";
		}
		if(numbers==3){
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none"
		}
		if(numbers==4){
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="block";
			document.getElementById("newDropdownMenu5").style.display="none"
		}
		if(numbers==5){
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="block";
			document.getElementById("newDropdownMenu5").style.display="block";
		}
	}
}

