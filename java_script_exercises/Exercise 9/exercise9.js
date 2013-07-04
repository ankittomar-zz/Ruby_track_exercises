var Validate = function() {
    this.bindSubmit();
}

Validate.prototype = {
    validate_number: function (event){
        var input_text = document.getElementById("input_field").value;
        var result_field = document.getElementById("result");
        var num_regex = /^\d+\.{0,1}\d+$/;

        if(input_text.match(num_regex) == null)
        {
            result_field.value = "false"
            event.preventDefault(); 

            //return false;
        }
        else
        {
            result_field.value = "true";
            
        }

    },

    bindSubmit: function () {
        var that = this;
        var submit_button = document.getElementById("submit_form");
        submit_button.addEventListener("submit", that.validate_number)  ;
    }

     
}

window.onload = function () {
       
        validate = new Validate ();
} 

