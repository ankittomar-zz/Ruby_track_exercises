function check_all()
{
  a = document.getElementsByClassName('cb1');
  for each(var i in a)
    {
      i.checked = true;
    }
};

function check_none()
{
  a = document.getElementsByClassName('cb1');
  for each(var i in a)
    {
      i.checked = false;
    }
};