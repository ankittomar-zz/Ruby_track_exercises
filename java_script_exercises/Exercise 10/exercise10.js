function extract_domain_sub_domain() {
   
    var domain, url, subdomain, url_text, url_format, url_format_regex,input; 
    
    input = document.getElementById("url").value;
    url_format_regex = /(^((http)s?:\/\/)?(www\.)?[a-z]+\.(([a-z]+)|([a-z]+\.[a-z]+)|([a-z]+\.[a-z]+\.[a-z]+))(\/.*)*$)/i
    url_format = /((www\.)?([a-z]+)(\.[a-z]+)(\.[a-z]+)?(\.[a-z]+)?)/
    url_text = input.match(url_format_regex);
    
    if(url_text != null)
    {       
        url = url_text[0].match(url_format);
        if(RegExp.$5 == "" && RegExp.$6 == "")
        {

            domain = RegExp.$3+RegExp.$4;
            
        }
        else if ( RegExp.$5 != "" && RegExp.$6 == "")
        {
            subdomain = RegExp.$3;
            domain = RegExp.$4 +RegExp.$5;
            
        }

        else if(RegExp.$6 != "")
        {
            subdomain = RegExp.$3;
            domain = RegExp.$4+RegExp.$5+RegExp.$6;
        }

         
        if(subdomain!=null)
        {
          alert("Domain : " + domain);
          alert("Sub domain : "+subdomain);
        }
        else alert( "Domain :  " + domain);
    }   
      
    else
    {
        alert("Invalid Url Pleasae try again");
        return false;
    }
}