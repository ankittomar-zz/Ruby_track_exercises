require 'date'
require 'time'
$second = 0

def verify_time_format(time)
  regexp = /^(([0-1]{0,1}[0-9])||(2[0-3])):[0-5][0-9]:[0-5][0-9]$/
  return 1 if (regexp=~time)
end

def add(time1)
  parsed_time1 = DateTime.parse(time1)
  time = String.new
  $second = $second+(parsed_time1.hour*60*60+parsed_time1.min*60+parsed_time1.sec) 
  hours = $second/(60*60)
  if hours > 23
    day = hours/24
    hour = hours % 24
    time << day.to_s << ' day &  ' << hour.to_s << ':'  
  else
    time << hours.to_s << ':'
  end
  minutes = ($second-hours*(60*60))/60
  time << minutes.to_s << ':'
  seconds = ($second-(hours*60*60)-(minutes*60))
  time << seconds.to_s
end

flag = 'y'
while flag == 'y' || flag == 'Y' do
 print("Enter Time value  :  ")
 time1 = gets
 verify_time_format(time1) ? time = add(time1) : puts("wrong format") 
 puts "Press 'y' to enter more values."
 flag = gets.rstrip
end
puts ("After Adding all time value  ======  #{time}")    
