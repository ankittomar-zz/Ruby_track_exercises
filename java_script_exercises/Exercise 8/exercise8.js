function check_format() {
    
    var email_text = document.getElementById("email_id").value;
    var home_page_url = document.getElementById("home_url").value;
    
    var email_regex = /^(?:\w+\.?)*\w+@(?:\w+\.?)*\w+$/
    var home_url_regex = /^(https?:\/\/)?(www.)([\da-z\.-]+)\.([a-z]{2,6})(\.[a-z])?$/  
    
    if (email_regex.test(email_text)) validation_email = true;
    else 
    {
        alert("Invalid Email");
        validation_email = false;
    }
    
    if (home_url_regex.test(home_page_url)) validation_url = true;
    else 
    {
        alert("Invalid home page url");
        validation_url = false;
    }
    
    if(validation_email == true && validation_url == true) return true
    else return false
}