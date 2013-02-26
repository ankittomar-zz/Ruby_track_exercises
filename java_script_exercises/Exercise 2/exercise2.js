function check_day(element) {
    var checkbox_none = document.getElementsByClassName('cb2');
    checkbox_none[0].checked = false;

    checkbox_none.checked = false;  
    var check_boxes = document.getElementsByClassName('cb1');
    var number_of_checked_boxes = 0;
    message = "Only 3 days can be selected. You have already selected";

    for each(var check_box in check_boxes)
      {
          if (check_box.checked ) 
          {
              number_of_checked_boxes += 1;
          }  
      } 

    if (number_of_checked_boxes >= 4)
    {    
        element.checked = false;
        for each(var checks_box in check_boxes)
        {
            if(checks_box.checked == true)
            {    
                message = message.concat(',',checks_box.value);
            }
        }
        alert(message);

    } 

};


function check_none() {
    check_boxes = document.getElementsByClassName('cb1');
    for each(var check_box in check_boxes)
    {
        check_box.checked = false;
    }
};

