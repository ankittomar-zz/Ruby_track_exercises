
function add(element) {

    var source_select_box = document.getElementById("source");
    var destination_select_box = document.getElementById('destination');

if(element.value == "add")
{
    number_of_options = source_select_box.options.length;
    source = source_select_box;
    destination = destination_select_box;
}

else if(element.value == "remove")
{ 
    number_of_options = destination_select_box.options.length;
    source = destination_select_box;
    destination = source_select_box;
}
  
    if(number_of_options > 0)
    {
        for(i=0; i<number_of_options; i++)
        {
             
            if(source.options[i].selected)
            {
               source.options[i].selected = false;
               destination.options.add(source.options[i]);
               number_of_options = source.length;
               i--;
            }
        }

    }
    else alert("No More Countries Left in Souce Box");


}


// function remove() {


//     var source_select_box = document.getElementById("source");
//     var destination_select_box = document.getElementById('destination');

//     number_of_options = destination_select_box.options.length;
  
//     if(number_of_options > 0)
//     {
//         for(i=0; i<number_of_options; i++)
//         {

//             if(destination_select_box.options[i].selected)
//             {
//                destination_select_box.options[i].selected = false;
//                source_select_box.options.add(destination_select_box.options[i]);
//                number_of_options = destination_select_box.options.length;
//                i--;
//             }
//         }

//     }
//     else alert("No More Countries Left in destination Box");

    

// }