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
    
   }