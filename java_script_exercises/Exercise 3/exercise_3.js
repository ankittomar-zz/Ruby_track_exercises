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
    
    name_text_field = create_text_field('name_txt');
    new_name_col.appendChild(name_text_field);

    email_text_field = create_text_field("email_txt");
    new_email_col.appendChild(email_text_field); 
    
    submit_button = create_button();
    new_action_col.appendChild(submit_button);
    
}

function create_text_field(field_name) {
    
    new_text_field = document.createElement("input");
    new_text_field.type = "text";
    new_text_field.name = field_name;
    
    return new_text_field;
}

function create_button() {

    new_button = document.createElement("input");
    new_button.type = "submit";
    new_button.name = "submit_button";
    new_button.value = "Save";
    new_button.onclick = function() {submit_line_item(this)};
    new_button.id = "submit_button_1"
    
    return new_button;

}

function create_link(link_text_value) {

    
    new_link = document.createElement('a');
    new_link.setAttribute('href',"javascript:");
    new_link.innerHTML = link_text_value;
    return new_link;

}


function submit_line_item(element) {
    
    element_parent_node = element.parentNode.parentNode;
    name_col_element = element_parent_node.childNodes[0];
    email_col_element = element_parent_node.childNodes[1];
    
    if (name_col_element.childNodes[0].value != '' && email_col_element.childNodes[0].value != '')
        {

            submit_data(name_col_element,email_col_element);
            replace_button_with_link(element);
        }
    else alert("Name and Email can't be blank");

}


function replace_button_with_link(element) {

    edit_link = create_link('edit');
    edit_link.onclick = function() {edit_data(this)};
    
    delete_link = create_link('Delete');
    delete_link.onclick = function() {delete_row(this)};
    
    parent_element = element.parentNode;
    
    new_edit_link = parent_element.replaceChild(edit_link,element);
    new_node = document.createTextNode("  /  ");
    
    parent_element.appendChild(new_node);
    parent_element.appendChild(delete_link);

}

function submit_data(name_col_element,email_col_element) {
    
    
    name_data = name_col_element.childNodes[0].value;
    email_data = email_col_element.childNodes[0].value;
    name_col_element.innerHTML = name_data;
    email_col_element.innerHTML = email_data;
    
}

function edit_data(element) {
    
    name_col = element.parentNode.parentNode.childNodes[0];
    name_data = name_col.innerHTML;
    
    email_col = element.parentNode.parentNode.childNodes[1];
    email_data = email_col.innerHTML;

    name_text_field = create_text_field('name_txt');
    name_text_field.value = name_data;
    name_col.replaceChild(name_text_field,name_col.childNodes[0]);

    email_text_field = create_text_field('email_field');
    email_text_field.value = email_data;
    email_col.replaceChild(email_text_field,email_col.childNodes[0]);

    submit_button = create_button();
    action_col = element.parentNode;
    action_col.innerHTML = '';
    action_col.appendChild(submit_button);
     
    
    
}

function delete_row(element) {

    current_row  = element.parentNode.parentNode; 
    table = current_row.parentNode;
    table.deleteRow(current_row.rowIndex);
}

