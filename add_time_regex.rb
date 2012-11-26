require 'date'
require 'time'

  
def time
  print("Enter first Time value  :  ")
  time1 = gets.rstrip
  print("Enter second time value :  ")
  time2 = gets.rstrip
 verify_time_format(time1) && verify_time_format(time2) ? time = add(time1,time2) : puts("wrong format") 
end

def verify_time_format(time)
  regexp = /^(([0-1]{0,1}[0-9])||(2[0-3])):[0-5][0-9]:[0-5][0-9]$/
  (regexp=~time)
end

def add(time1,time2)
  parsed_time1 = DateTime.parse(time1)
  parsed_time2 = DateTime.parse(time2)
  second = convert_to_sec(parsed_time1)+convert_to_sec(parsed_time2)
  convert_time(second)
end

def convert_to_sec(time)
  time.hour*60*60+time.min*60+time.sec
end

def convert_time(second)
  time = String.new
  hours = second/(60*60)
  if hours > 23
    day = hours/24
    hour = hours % 24
    time << day.to_s << ' day &  ' << hour.to_s << ':'  
  else
    time << hours.to_s << ':'
  end
  minutes = (second-hours*(60*60))/60
  time << minutes.to_s << ':'
  seconds = (second-(hours*60*60)-(minutes*60))
  time << seconds.to_s
  puts ("After Adding both times ======  #{time}")
end

time
