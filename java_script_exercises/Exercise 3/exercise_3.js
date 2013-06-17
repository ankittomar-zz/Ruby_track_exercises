function add_new_row() {
    table_node = document.getElementById("employee_info_table");  
    insert_row(table_node);
    
}

function insert_row(table_node) {
      
    var table_row_count = table_node.rows.length;
    var new_row = table_node.insertRow(table_row_count);
    add_column_to_row(new_row);
    
}

function add_column_to_row(row) {
    
    var new_name_column = row.insertCell(0);
    var new_email_column = row.insertCell(1);
    var new_action_column = row.insertCell(2);
    
    var name_text_field = create_text_field('name_txt');
    new_name_column.appendChild(name_text_field);

    var email_text_field = create_text_field("email_txt");
    new_email_column.appendChild(email_text_field); 
    
    var submit_button = create_submit_button();
    new_action_column.appendChild(submit_button);
    
}

function create_text_field(field_name) {
    
    var new_text_field = document.createElement("input");
    new_text_field.type = "text";
    new_text_field.name = field_name;
    
    return new_text_field;
}

function create_submit_button() {

    var new_submit_button = document.createElement("input");
    new_submit_button.type = "submit";
    new_submit_button.name = "submit_button";
    new_submit_button.value = "Save";
    new_submit_button.onclick = function() { submit_line_item(this) };
    return new_submit_button;

}

function create_link(link_text_value) {
   
    var new_link = document.createElement('a');
    new_link.setAttribute('href', "javascript:void(0)");
    new_link.innerHTML = link_text_value;
    return new_link;

}


function submit_line_item(element) {
    
    var element_parent_node = element.parentNode.parentNode;
    var name_column_element = element_parent_node.childNodes[0];
    var email_column_element = element_parent_node.childNodes[1];
    
    if (name_column_element.childNodes[0].value != '' && email_column_element.childNodes[0].value != '')
        {

            submit_data(name_column_element, email_column_element);
            replace_button_with_link(element);
        }
    else alert("Name and Email can't be blank");

}


function replace_button_with_link(element) {

    var edit_link = create_link('edit');
    edit_link.onclick = function() { edit_data(this) };
    delete_link = create_link('Delete');
    delete_link.onclick = function() { delete_row(this) };
    
    var parent_element = element.parentNode;
    
    var new_edit_link = parent_element.replaceChild(edit_link, element);
    var new_node = document.createTextNode("  /  ");
    
    parent_element.appendChild(new_node);
    parent_element.appendChild(delete_link);

}

function submit_data(name_column_element, email_column_element) {
    
    
    var name_data = name_column_element.childNodes[0].value;
    var email_data = email_column_element.childNodes[0].value;
    name_column_element.innerHTML = name_data;
    email_column_element.innerHTML = email_data;
    
}

function edit_data(element) {
    
    var name_column = element.parentNode.parentNode.childNodes[0];
    var name_data = name_column.innerHTML;
    
    var email_column = element.parentNode.parentNode.childNodes[1];
    var email_data = email_column.innerHTML;

    var name_text_field = create_text_field('name_txt');
    name_text_field.value = name_data;
    name_column.replaceChild(name_text_field, name_column.childNodes[0]);

    var email_text_field = create_text_field('email_field');
    email_text_field.value = email_data;
    email_column.replaceChild(email_text_field, email_column.childNodes[0]);

    var submit_button = create_submit_button();
    var action_column = element.parentNode;
    action_column.innerHTML = '';
    action_column.appendChild(submit_button);
     
    
    
}

function delete_row(element) {
    current_row  = element.parentNode.parentNode; 
    table_node.deleteRow(current_row.rowIndex);
}
    
