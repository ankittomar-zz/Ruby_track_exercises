def add_time
  print("Enter first Time value  :  ")
  time1 = gets
  print("Enter second time value :  ")
  time2 = gets
  if (/^[0-2]{0,1}[0-3]{1}:[0-5]{1}[0-9]{1}:[0-5]{1}[0-9]{1}$/=~time2 && /^[0-2]{0,1}[0-3]{1}:[0-5]{1}[0-9]{1}:[0-5]{1}[0-9]{1}$/=~time1)
    add(time1,time2)
  else
    puts("wrong format")
  end
       
end

def add(time1,time2)
  require 'date'
  require 'time'
  t1 = DateTime.parse(time1)
  t2 = DateTime.parse(time2)
  second = (t1.hour*60*60+t1.min*60+t1.sec) + (t2.hour*60*60+t2.min*60+t2.sec)
  time = String.new
  hours = second/(60*60)
  if hours > 23
    day = hours/24
    hour = hours % 24
    time << day.to_s << ' day &  '
    time << hour.to_s
    time << ':'  
  else
  time << hours.to_s
  time << ':'
end
  min = (second-hours*(60*60))/60
  time << min.to_s
  time << ':'
  sec = (second-(hours*60*60)-(min*60))
  time << sec.to_s
  puts ("After Addint both times ======  #{time}")
end

add_time
