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
    new_action_col.innerHTML = "newaction";
    new_name_col.innerHTML = "newname";
    name_text_field = insert_text_field();
    name_text_field.name = "name_txt[]";
    new_email_col.appendChild(name_text_field); 
    
    table_row_count = table_node.rows.length;
    
}

function insert_text_field() {
    new_text_field = document.createElement("input");
    new_text_field.type = "text";
    return new_text_field;
}

