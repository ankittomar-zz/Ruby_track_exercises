var TreeCheckboxList = function(){

    this.bindClick();
}

TreeCheckboxList.prototype = {

    showChild: function() {

        var element = this;
        var child_node = element.parentNode.getElementsByTagName('ul');

        if (element.checked)
        {  
            state = true;
            display = "block";
        }
        else
        { 
            state = false;
            display = "none";
        }

        child_node[0].style.display = display;
        tree.change_child_checkboxes_state(element, state);
        tree.scroll_to_show_child(element);
        },

    change_child_checkboxes_state: function(element, state) {

        child_elements = element.parentNode.getElementsByTagName("input");
        number_of_child = child_elements.length;
        for(var i = 0; i < number_of_child; i++)
        {
            child_elements[i].checked = state;
        } 
    },


    scroll_to_show_child: function(element) {

        element.scrollIntoView(true);
    },

    bindClick: function(){
        var that = this;
        var parent_checkbox = document.getElementsByClassName("parent_box");
        for(var i = 0; i < parent_checkbox.length; i++)
        {   
            parent_checkbox[i].addEventListener("click", that.showChild);

        }
    }

}

window.onload = function(){

    tree = new TreeCheckboxList();
}