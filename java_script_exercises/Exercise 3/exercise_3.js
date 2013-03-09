function add_new_row() {
  
    table_node = document.getElementById("employee_info_table");
    create_new_row(table_node);
    
}

function create_new_row(table_node) {
      
    table_row_count = table_node.rows.length;
    new_row = table_node.insertRow(length+1);
    add_col_to_row(new_row);
    
}

function add_col_to_row(new_row) {
    
    new_name_col = new_row.insertCell(0);
    new_email_col = new_row.insertCell(1);
    new_action_col = new_row.insertCell(2);
    
    
    //new_name_col.innerHTML = insert_text_field();
    name_text_field = insert_text_field();
    name_text_field.name = "name_txt";
    new_name_col.appendChild(name_text_field);

    email_text_field = insert_text_field();
    email_text_field.name = "email_field";
    new_email_col.appendChild(email_text_field); 
    
    submit_button = insert_button();
    submit_button.name = "submit_button";
    submit_button.value = "Submit";
    submit_button.onclick = function() {submit_line_item(this)};
    submit_button.id = "submit_button_1"
    new_action_col.appendChild(submit_button);
    

    table_row_count = table_node.rows.length;
    
}

function insert_text_field() {
    new_text_field = document.createElement("input");
    new_text_field.type = "text";
    return new_text_field;
}

function insert_button() {

    new_button = document.createElement("input");
    new_button.type = "submit";
    return new_button;

}

function insert_link(link_text_value) {

    
    new_link = document.createElement('a');
    new_link.setAttribute('href',"");
    new_link.innerHTML = link_text_value;
    return new_link;

}


function submit_line_item(element) {
    
    submit_button = document.getElementById("submit_button_1");
    edit_link = insert_link('edit');
    delete_link = insert_link('Delete');
    ref = element.parentNode;
    
    new_edit_link = element.parentNode.replaceChild(edit_link,element);
    new_node = document.createTextNode("  /  ");
    
    ref.appendChild(new_node);
    ref.appendChild(delete_link);

    
}

