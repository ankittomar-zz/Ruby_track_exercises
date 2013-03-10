function open_url() {

    url = prompt("Please enter the URl to be opened");
    
    if( url == null || url.trim() == '' )
        {
            alert("Invalid Url. Please try again.");
            document.location.reload();  
        }
    else  
        {    
            if (url.indexOf("http://") == -1) 
                {
                    url = "http://" + url;
                }    
            window.open(url,'new_window', "toolbar=no,menubar=0,status=0,scrollbars=no,Width=400,Height=450");
        }
}

