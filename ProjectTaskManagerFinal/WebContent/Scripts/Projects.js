var tabLinks = new Array();
var contentDivs = new Array();

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
      
     	  
     	   var i = 0;
      
      
  function getFirstChildWithTagName( element, tagName ) {
        for ( var i = 0; i < element.childNodes.length; i++ ) {
          if ( element.childNodes[i].nodeName == tagName ) return element.childNodes[i];
        }
      }

      function getHash( url ) {
        var hashPos = url.lastIndexOf ( '#' );
        return url.substring( hashPos + 1 );
      }
      
      function goToCreateNewProject(){
          window.location = 'AddProject.jsp';
         }
      
      function goToPreviewProjects(){
          window.location = 'EditProject.jsp';
         }

      function goToIndex(){
      	window.location = 'index.jsp';
      }
      

      function goToAdministration()
      {
      	
      window.location='Administration.jsp';
      }
      
      function goToCreateNewTask(){
          window.location = 'AddTask.jsp';
         }
      
      function goToEditTask(){
          window.location = 'EditTask.jsp';
         }