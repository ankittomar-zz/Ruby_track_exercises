function show(element) {

    child_node = element.parentNode.getElementsByTagName('ul');
    
    if (element.checked)
    {  
        state = true;
        dis = "block";
    }
    else
    { 
        state = false;
        dis = "none";
    }

    child_node[0].style.display = dis;
    change_child_checkboxes_state(element,state);
    scroll_to_show_child(element);
}

function change_child_checkboxes_state(element,state) {

    child_elements = element.parentNode.getElementsByTagName("input");
    number_of_child = child_elements.length;
    for(i=0;i<number_of_child;i++)
    {
        child_elements[i].checked = state;
    } 


}


function scroll_to_show_child(element) {

    element.scrollIntoView(true);
}


