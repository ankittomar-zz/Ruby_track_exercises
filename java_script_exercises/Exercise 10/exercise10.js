var Domain = function(){
    this.bindSubmit();
}

Domain.prototype = {
    extractDomainSubDomain: function () {
        var domain, url, subdomain, url_text, url_format, url_format_regex, input; 
        
        input = document.getElementById("url").value.trim();
        url_protocol_format_regex = /^((http)s?:\/\/)?(www\.)?[a-z]+\.(([a-z]+)|([a-z]+\.[a-z]+)|([a-z]+\.[a-z]+\.[a-z]+))(\/.*)*$/i
        url_regex = /(www\.)?([a-z]+)(\.)([a-z]+)(\.[a-z]+)?(\.[a-z]+)?/
        url_text = input.match(url_protocol_format_regex);
        
        if(!url_text)
        {   
            alert("Invalid Url Please try again");
            return false;
        }   
          
        else
        {
            url = url_text[0].match(url_regex);

            if(!url[5] && !url[6])
            {

                domain = url[2] + url[3] + url[4];
                
            }
            else if ( !!url[5] && !url[6])
            {
                subdomain = url[2];
                domain = url[4] + url[5];
                
            }

            else if(!!url[6])
            {
                subdomain = url[2];
                domain = url[4] + url[5] + url[6];
            }

             
            if(!!subdomain)
            {
              alert("Domain : " + domain + ", " + "Sub domain : "+ subdomain);
            }
            else alert( "Domain :  " + domain);
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