var Validation = function() {
    this.bindSubmit();
}

Validation.prototype = {

    checkEmpty: function(element, event) {
    
        var validation_failed = false;
        var form_input_elements = document.getElementsByClassName("not_empty");
        var number_of_form_input_elements = form_input_elements.length;
        var notification_checkbox = document.getElementById("notification");
       
        for (var i = 0; i < number_of_form_input_elements; i++)
        {
            var field_value = form_input_elements[i].value.trim();
            var field_name = form_input_elements[i].name;
            
            if(field_value == "" || field_value == null)
            {
                validation_failed = true;
                alert(field_name + " " + "can't be empty");
            }
            else if(field_name == "About Me" && field_value.length < 50)  
            {
                alert("About me should have atleast 50 characters");
                validation_failed = true;
            }
        }

        if(!notification_checkbox.checked) 
        {
            validation_failed = true;
            alert("Please confirm notification comment receipt");
        } 

        if (validation_failed)
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
        var form = document.getElementById("registration");
        form.addEventListener("submit", function(event) {
            that.checkEmpty(this, event)
        }); 
    }

}

window.onload = function() {
    new Validation();
}
