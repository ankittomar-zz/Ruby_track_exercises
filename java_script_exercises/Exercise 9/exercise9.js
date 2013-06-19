function validate_number(){

    var input_text = document.getElementById("input_field").value;
    var result_field = document.getElementById("result");
    if(isNaN(input_text))
    {
        result_field.value = "false";
        return false;

    }
    else
    {
        result_field.value = "true";
        return true;
    }

}