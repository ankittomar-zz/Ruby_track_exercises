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
    new_link.setAttribute('href',"javascript:");
    new_link.innerHTML = link_text_value;
    return new_link;

}


function submit_line_item(element) {
    
    submit_button = document.getElementById("submit_button_1");
    submit_data(element);
    replace_button_with_link(element);

}


function replace_button_with_link(element) {

    edit_link = insert_link('edit');
    edit_link.onclick = function() {edit_data(this)};
    delete_link = insert_link('Delete');
    delete_link.onclick = function() {delete_data(this)};
    ref = element.parentNode;
    
    new_edit_link = element.parentNode.replaceChild(edit_link,element);
    new_node = document.createTextNode("  /  ");
    
    ref.appendChild(new_node);
    ref.appendChild(delete_link);

}

function submit_data(element) {
    
    element_parent_node = element.parentNode.parentNode;
    name_col_element = element_parent_node.childNodes[0];
    email_col_element = element_parent_node.childNodes[1];
    name_data = name_col_element.childNodes[0].value;
    email_data = email_col_element.childNodes[0].value;
    name_col_element.innerHTML = name_data;
    email_col_element.innerHTML = email_data;
    
}

function edit_data(element) {
    alert(element);

    parent_node = element.parentNode.parentNode;
    alert(parent_node);
    name_data = parent_node.childNodes[0].innerHTML;
    email_data = parent_node.childNodes[1].innerHTML;
    name_text_field = insert_text_field();
    name_text_field.name = "name_txt";
    name_text_field.value = name_data;
    name_col = parent_node.childNodes[0];
    email_col = parent_node.childNodes[1];
    alert(name_text_field);
    alert(name_col);
    alert(email_col);
    alert(name_col.childNodes[0]);

    name_col.replaceChild(name_text_field,name_col.childNodes[0]);

    email_text_field = insert_text_field();
    email_text_field.name = "email_field";
    email_text_field.value = email_data;
    email_col.replaceChild(email_text_field,email_col.childNodes[0]);

    submit_button = insert_button();
    submit_button.name = "submit_button";
    submit_button.value = "Submit";
    submit_button.onclick = function() {submit_line_item(this)};
    submit_button.id = "submit_button_1"
    action_col = element.parentNode;
    action_col.innerHTML = '';
    action_col.appendChild(submit_button);
     
    
    
}

function delete_data(element) {

    table =element.parentNode.parentNode.parentNode;
    row = element.parentNode.parentNode.rowIndex;
    table.deleteRow(row);
}

