var Domain = function(){
    this.bindSubmit();
}

Domain.prototype = {
    extractDomainSubDomain: function () {
        var domain, url, subdomain, url_text, url_format, url_format_regex, input; 
        
        input = document.getElementById("url").value.trim();
        url_protocol_format_regex = /(^((http)s?:\/\/)?(www\.)?[a-z]+\.(([a-z]+)|([a-z]+\.[a-z]+)|([a-z]+\.[a-z]+\.[a-z]+))(\/.*)*$)/i
        url_regex = /((www\.)?([a-z]+)(\.)([a-z]+)(\.[a-z]+)?(\.[a-z]+)?)/
        url_text = input.match(url_protocol_format_regex);
        
        if(url_text != null)
        {       
            url = url_text[0].match(url_regex);
            if(RegExp.$6 == "" && RegExp.$7 == "")
            {

                domain = RegExp.$3 + RegExp.$4 + RegExp.$5;
                
            }
            else if ( RegExp.$6 != "" && RegExp.$7 == "")
            {
                subdomain = RegExp.$3;
                domain = RegExp.$5 + RegExp.$6;
                
            }

            else if(RegExp.$7 != "")
            {
                subdomain = RegExp.$3;
                domain = RegExp.$5 + RegExp.$6 + RegExp.$7;
            }

             
            if(subdomain!=null)
            {
              alert("Domain : " + domain);
              alert("Sub domain : "+ subdomain);
            }
            else alert( "Domain :  " + domain);
        }   
          
        else
        {
            alert("Invalid Url Pleasae try again");
            return false;
        }
    },

    bindSubmit: function() {
        var that = this;
        var form = document.getElementById("url_submit");
        form.addEventListener("submit", that.extractDomainSubDomain);
    }
}

window.onload = function(){
    domain = new Domain();
}