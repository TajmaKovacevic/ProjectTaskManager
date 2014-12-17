var tabLinks = new Array();
var contentDivs = new Array();


function goToIndex(){
	window.location = 'index.jsp';
}

function goToAdministration()
{
	
window.location='Administration.jsp';
}



 function init() {

      // Grab the tab links and content divs from the page
      var tabListItems = document.getElementById('tabs').childNodes;
      for ( var i = 0; i < tabListItems.length; i++ ) {
        if ( tabListItems[i].nodeName == "LI" ) {
          var tabLink = getFirstChildWithTagName( tabListItems[i], 'A' );
          var id = getHash( tabLink.getAttribute('href') );
          tabLinks[id] = tabLink;
          contentDivs[id] = document.getElementById( id );
       }
}

 var i = 0;

      for ( var id in tabLinks ) {
        tabLinks[id].onclick = showTab;
        tabLinks[id].onfocus = function() { this.blur() };
        if ( i == 0 ) tabLinks[id].className = 'selected';
        i++;
      }
	  
	   var i = 0;

      for ( var id in contentDivs ) {
        if ( i != 0 ) contentDivs[id].className = 'tabContent hide';
        i++;
      }
    }

    function showTab() {
      var selectedId = getHash( this.getAttribute('href') );

      // Highlight the selected tab, and dim all others.
      // Also show the selected content div, and hide all others.
      for ( var id in contentDivs ) {
        if ( id == selectedId ) {
          tabLinks[id].className = 'selected';
          contentDivs[id].className = 'tabContent';
        } else {
          tabLinks[id].className = '';
          contentDivs[id].className = 'tabContent hide';
        }
      }
	      
      return false;
    }
function getFirstChildWithTagName( element, tagName ) {
      for ( var i = 0; i < element.childNodes.length; i++ ) {
        if ( element.childNodes[i].nodeName == tagName ) return element.childNodes[i];
      }
    }

    function getHash( url ) {
      var hashPos = url.lastIndexOf ( '#' );
      return url.substring( hashPos + 1 );
    }
    
    
    
    function combobox(){
    var n = document.getElementById("membern");
	 var   r = document.getElementById("add_person");
	 //alert(i);
	 var i=0;
	n.addEventListener("blur", function(e) {
		 i=document.getElementById("membern").value;	
		alert(i);
	   var whereToPut = document.getElementById('add_person');
	   for(j=0; j<i; j++){
		   r.innerHTML+="Member "+(j+1);
  var newDropdown = document.createElement('select');
  newDropdown.setAttribute('id',"newDropdownMenu");
 // newDropdown.insertBefore(select,submit);
  whereToPut.appendChild(newDropdown);

 /* var itemLabel = document.createElement("Label");
  itemLabel.setAttribute("for", select);
  itemLabel.innerHTML = "Member1: ";
newDropdown.insertBefore(itemLabel, select);*/
      //Add an option called "Nadina"

      
      
      var optionApple=document.createElement("option");
      optionApple.text="Nadina";
      newDropdown.add(optionApple,newDropdown.options[null]);
      
    
             
     
      //Add an option called "Melika"
      var optionBanana=document.createElement("option");
      optionBanana.text="Melika";
      newDropdown.add(optionBanana,newDropdown.options[null]);
      r.innerHTML+="<br>"
     
  
      
	   }
		
	 var saveButton=document.createElement('input');                     //creating the submit button which when clicked will save the value written in the textboxes
saveButton.type="submit";
saveButton.name="submitButton";
saveButton.value="Add new team";
r.appendChild(saveButton);
	   
	}, false);}
    
    function bla(){ alert("bla");}
    
    
