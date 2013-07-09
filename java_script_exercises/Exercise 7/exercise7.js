var Form = function() {
    this.bindSubmit();

}

Form.prototype = {

    checkEmpty: function(element, event) {
    
        var submission = 1;
        var form_element = document.getElementsByClassName("not_empty");
        var number_of_form_element = form_element.length;
        var notification_checkbox = document.getElementById("notification");
       
        for (var i = 0; i < number_of_form_element; i++)
        {
            value = form_element[i].value;
            name = form_element[i].name;
            
            if(value == "" || value == null)
            {
                submission = 0;
                alert(name + " " + "can't be empty");
            }
            else if(name == "About Me" && value.length < 50)  
            {
                alert("About me should have atleast 50 characters");
                submission = 0;
            }
        }

        if(!notification_checkbox.checked) 
        {
            submission = 0;
            alert("Please confirm notification comment receipt");
        } 

        if (submission == 0)
        {
            event.preventDefault();
        }

        else 
        {
           return true;
        }
    },


    bindSubmit: function() {
        var that = this;
        var submit_form = document.getElementById("registration");
        submit_form.addEventListener("submit", function(e) {
            that.checkEmpty(this,e)
        }); 
    }

}

window.onload = function() {
    new Form();
}
