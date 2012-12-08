require 'date'
require 'time'

def verify_time_format(time)
  regexp = /^([0-1]{0,1}[0-9]||2[0-3]):([0-5][0-9]):([0-5][0-9])$/
  if(regexp =~ time)
    return $1, $2, $3 
  else 
    abort "Invalid format"
  end
  
end

def add(h1, m1, s1, h2, m2, s2)
  day = 0
  hour, minute, second = h1 + h2, m1 + m2, s1 + s2
  minute, second = minute + 1, (second) - 60 if (second) > 59
  hour, minute = hour + 1, (minute) - 60 if (minute) > 59
  day, hour = day + 1, (hour) - 24 if (hour) > 23
  return day, hour, minute, second
end



print("Enter first Time value  :  ")
time1 = gets.rstrip
print("Enter second time value :  ")
time2 = gets.rstrip
h1, m1, s1 = verify_time_format(time1)
h2, m2, s2 = verify_time_format(time2)
day, hour, minute, second = 0
day, hour, minute, second = add(h1.to_i, m1.to_i, s1.to_i, h2.to_i, m2.to_i, s2.to_i) 
puts("#{day} days #{hour}:#{minute}:#{second}")

