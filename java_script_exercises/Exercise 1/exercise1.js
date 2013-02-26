function change_state(state) {
    check_boxes = document.getElementsByClassName('cb1');
    for each(var check_box in check_boxes)
    {
        check_box.checked = state;
    }
};

