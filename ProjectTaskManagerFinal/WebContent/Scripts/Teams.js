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

function changeFunc() {
    var selectBox = document.getElementById("sel");
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    
    var parsedData = selectedValue;
    var res = parsedData.split(",");
    document.getElementById("username_id").setAttribute("value",  res[0].slice(2));
    document.getElementById("password_id").setAttribute("value",  res[1]);
    document.getElementById("firstname_id").setAttribute("value",  res[2]);
    document.getElementById("lastname_id").setAttribute("value",  res[3]);
    var gen=res[4].toLowerCase();
    if(res[4]==" Male")
    document.getElementById("genderm_id").checked = true;
    else
        document.getElementById("genderf_id").checked = true;

    document.getElementById("email_id").setAttribute("value",  res[6].slice(0,-2));

   }
