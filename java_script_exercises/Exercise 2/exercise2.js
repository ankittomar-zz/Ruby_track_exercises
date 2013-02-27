function check_day(element) {
    var checkbox_none_arr = window.document.getElementsByClassName('cb2');
    checkbox_none = checkbox_none_arr[0];
    checkbox_none.checked = false;  

    var check_boxes = document.getElementsByClassName('cb1');
    var number_of_checked_boxes = 0;
    var check_boxes_length = check_boxes.length;
    message = "Only 3 days can be selected. You have already selected";

    for (i=0; i<check_boxes_length; i++ )
      {   
          check_box = check_boxes[i];    
          if (check_box.checked ) 
          {
              number_of_checked_boxes += 1;
          } 
      } 

    if (number_of_checked_boxes > 3)
    {   
        element.checked = false;
        for (i=0; i<check_boxes_length; i++)
        {
            check_box = check_boxes[i];
            if(check_box.checked)
            {    
                message = message.concat(',',check_boxes[i].value);
            }
        }
        alert(message);

    } 

};


function check_none() {
    check_boxes = document.getElementsByClassName('cb1');
    check_boxes_length = check_boxes.length;
    for (i=0; i<check_boxes_length; i++)
    {
        check_box = check_boxes[i];
        check_box.checked = false;
    }
};

