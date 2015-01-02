function edit(){
 alert("Person is succesefully edited!");
} 

function goToIndex(){
	window.location = 'index.jsp';
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

    document.getElementById("email_id").setAttribute("value",  res[7].slice(0,-2));
   if(res[7].slice(0,-2)==" 2")
   document.getElementById("selectRole").value="2";
   else if(res[7].slice(0,-2)==" 1")
   document.getElementById("selectRole").value="1";
   else 
   document.getElementById("selectRole").value="3"; 
 
   }