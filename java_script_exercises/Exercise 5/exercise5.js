function get_name() {

    first_name = prompt("Please enter your First Name");
    last_name = prompt("please enter your Last name");
    
    if( first_name == null || first_name.trim() == '' || last_name == null || last_name.trim() == '' )
        {
            alert("First Name and Last Name can't be Null or space characters. Please try Again ");
            document.location.reload();  
        }
    else  
        {    
            message = "hello " + first_name + " " + last_name;
            alert(message);
            document.getElementById("para_1").innerHTML=message;
        }
}

