var validate_number = function (event){

    var input_text = document.getElementById("input_field").value;
    var result_field = document.getElementById("result");
    if(isNaN(input_text))
    {
        result_field.value = "false";
        event.preventDefault();
    }
    else
    {
        return result_field.value = "true";
        return true;
    }

}

window.onload = function () {
    var submit_button = document.getElementById("submit_form");
    submit_button.addEventListener("click",validate_number,false);
}   