function validate_number(){

    var input_text = document.getElementById("input_field").value;
    var result_field = document.getElementById("result");
    alert(input_text);
    
   // var number_regex = /^((\.)?([0-9]+)(\.[0-9]+)*)/;
    alert(isNaN(input_text));
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