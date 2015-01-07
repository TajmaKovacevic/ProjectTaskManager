function goToIndex(){
	window.location = 'index.jsp';
}

function goToAdministration()
{
window.location='Administration.jsp';
}


function TeamFunc() {
    var selectBox = document.getElementById("selTeam");
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    var parsedData = selectedValue;
    var res = parsedData.split(",");
    document.getElementById("team_name").setAttribute("value",  res[0].slice(2));
    
    document.getElementById("team_leader").setAttribute("value",  res[1]);
    document.getElementById("membern").setAttribute("value",  res[2].slice(1,-2));
    document.getElementById("variableName").value=res[0].slice(2);
   }



function number(){

	var numbers=document.getElementById("membern").value;
	
	if(numbers>5){
		//document.getElementById("sub1").disabled=true;
		
	}
	else{
		//document.getElementById("members_of_team").style.display="block";
		//document.getElementById("add_members").style.display="block";
		if(numbers==1){
		//	document.getElementById("sub1").disabled=false;
			;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="none";
			document.getElementById("newDropdownMenu3").style.display="none";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none";
		}
		if(numbers==2){
			//document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="none";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none";
		}
		if(numbers==3){
			//document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="none";
			document.getElementById("newDropdownMenu5").style.display="none"
		}
		if(numbers==4){
			//document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="block";
			document.getElementById("newDropdownMenu5").style.display="none"
		}
		if(numbers==5){
			//document.getElementById("sub1").disabled=false;
			document.getElementById("newDropdownMenu1").style.display="block";
			document.getElementById("newDropdownMenu2").style.display="block";
			document.getElementById("newDropdownMenu3").style.display="block";
			document.getElementById("newDropdownMenu4").style.display="block";
			document.getElementById("newDropdownMenu5").style.display="block";
		}
	}
}
