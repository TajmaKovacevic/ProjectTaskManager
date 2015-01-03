var tabLinks = new Array();
var contentDivs = new Array();

function validateName(){
	var name=document.getElementById("teamname").value;
	//alert(name);
	
	if(name=="")
		{
		document.getElementById("teamname").style.background="Red";
		document.getElementById("sub1").disabled=true;
		alert("Team cannot be added without a team name!");
		}
	else
		{
		document.getElementById("teamname").style.background="White";
		document.getElementById("sub1").disabled=false;
		}
}

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
		document.getElementById("sub1").disabled=true;
		alert("Maximum team members is 5! Team cannot be added.");
		
	}
	else{
		document.getElementById("members_of_team").style.display="block";
		document.getElementById("add_members").style.display="block";
		if(numbers==1){
			document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="none";
			document.getElementById("newDropdownMenu3").style.display="none";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none";
		}
		if(numbers==2){
			document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="none";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none";
		}
		if(numbers==3){
			document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none"
		}
		if(numbers==4){document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="block";
			document.getElementById("newDropdownMenu5").style.display="none"
		}
		if(numbers==5){
			document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="block";
			document.getElementById("newDropdownMenu5").style.display="block";
		}
	}
}

function init(){
	alert("Team was successfully added!")
}

$("#teamname").blur(function(){
	  alert("This input field has lost its focus.");
	});