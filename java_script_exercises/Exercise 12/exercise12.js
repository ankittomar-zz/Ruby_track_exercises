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
        tree.changeChildCheckboxesState(element, state);
        tree.scrollToShowChild(element);
    },

    changeChildCheckboxesState: function(element, state) {

        var child_elements = element.parentNode.getElementsByTagName("input");
        for(var i = 0; i < child_elements.length; i++)
        {
            child_elements[i].checked = state;
        } 
    },


    scrollToShowChild: function(element) {

        element.scrollIntoView(true);
    },

    bindClick: function(){
        var parent_checkbox = document.getElementsByClassName("parent_box");
        for(var i = 0; i < parent_checkbox.length; i++)
        {   
            parent_checkbox[i].addEventListener("click", this.showChild);

        }
    }

}

window.onload = function(){

    tree = new TreeCheckboxList();
}