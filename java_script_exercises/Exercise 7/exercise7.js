function check_empty() {
    
    var submission = 1;
    text_boxes = document.getElementsByClassName("not_empty");
    number_of_text_boxes = text_boxes.length;
    for (i=0; i<number_of_text_boxes; i++)
    {
        value = text_boxes[i].value;
        name = text_boxes[i].name;
        
        if(value == "" || value == null)
        {
            submission = 0;
            alert(name +" "+ "can't be empty");

        }

        else if(name == "about me")  
        {
          text_length = value.length;
          if(text_length < 50)
          {
              alert("about me should have atleast 50 characters");
              submission = 0;
          }
        }
    }


    if (submission == 0)
    {
        return false;

    }

    else 
    {
        confirm_receive_notification();
        return true;
    }
}


function confirm_receive_notification() {

    notification_checkbox = document.getElementsByClassName("notification");
    if(notification_checkbox[0].checked)
    {
        alert("You have opted for receiving notification");
    }
          
}
