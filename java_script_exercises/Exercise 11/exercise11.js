
function add() {

    var source_select_box = document.getElementById("source");
    var destination_select_box = document.getElementById('destination');

    number_of_options = source_select_box.options.length;
  
    if(number_of_options > 0)
    {
        for(i=0; i<number_of_options; i++)
        {
             
            if(source_select_box.options[i].selected)
            {
               source_select_box.options[i].selected = false;
               destination_select_box.options.add(source_select_box.options[i]);
               number_of_options = source_select_box.options.length;
               i--;
            }
        }

    }
    else alert("No More Countries Left in Souce Box");


}


function remove() {


    var source_select_box = document.getElementById("source");
    var destination_select_box = document.getElementById('destination');

    number_of_options = destination_select_box.options.length;
  
    if(number_of_options > 0)
    {
        for(i=0; i<number_of_options; i++)
        {

            if(destination_select_box.options[i].selected)
            {
               destination_select_box.options[i].selected = false;
               source_select_box.options.add(destination_select_box.options[i]);
               number_of_options = destination_select_box.options.length;
               i--;
            }
        }

    }
    else alert("No More Countries Left in destination Box");

    

}