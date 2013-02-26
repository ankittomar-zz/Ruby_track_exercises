function check_all(state)
{
  a = document.getElementsByClassName('cb1');
  for each(var i in a)
    {
      i.checked = state;
    }
};

