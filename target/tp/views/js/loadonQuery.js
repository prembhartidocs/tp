 function loadXMLDoc(passedurl,id,loadingId) {
            var xmlhttp;
            var k = document.getElementById(id).value;
            var urls = passedurl+"?ver=" + k;

            if (window.XMLHttpRequest) {
                  xmlhttp = new XMLHttpRequest();
            } else {
                  xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function() {
                  if (xmlhttp.readyState == 4) {
                        var result = xmlhttp.responseText;
                        
                        if(result==0){
                        
                        	result="<br/><br/>&nbsp;&nbsp;&nbsp;<font color=red>FlightID: "+document.getElementById(id).value+" is not Available ..!!</font>";
                        	document.getElementById(id).value="";	
                        }
                        else{
                        
                        	result="<br/><br/>&nbsp;&nbsp;&nbsp;<font color=green>Flight is Available in Database</font>";                      
                        }
                        document.getElementById(loadingId).innerHTML=result;
                        
                        
                        
                  }
            };
            xmlhttp.open("GET", urls, true);
            xmlhttp.send();
      }