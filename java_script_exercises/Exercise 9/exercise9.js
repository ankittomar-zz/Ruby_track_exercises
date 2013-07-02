var validate_number = function (event){

    var input_text = document.getElementById("input_field").value;
    var result_field = document.getElementById("result");
    var num_regex = /^\d+$/;

    if(input_text.match(num_regex) == null)
    {
        result_field.value = "false";
        event.preventDefault();
    }
    else
    {
        result_field.value = "true";
        
    }

}

window.onload = function () {
    var submit_button = document.getElementById("submit_form");
    submit_button.addEventListener("click",validate_number,false);
}   