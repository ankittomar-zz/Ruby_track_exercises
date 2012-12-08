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

def add(day, h1, m1, s1, h2, m2, s2)
  hour, minute, second =h1 + h2, m1 + m2, s1 + s2
  minute, second = minute + 1, (second) - 60 if (second) > 59
  hour, minute = hour + 1, (minute) - 60 if (minute) > 59
  day, hour = day + 1, (hour) - 24 if (hour) > 23
  return day, hour, minute, second
end

def time_additon
  day, hour, minute, second = 0, 0, 0, 0
  continue = 'y'
  while (continue.downcase =='y') do
    print("Enter first Time value  :  ")
    time = gets.rstrip
    h, m, s = verify_time_format(time)
    day, hour, minute, second = add(day, hour, minute, second, h.to_i, m.to_i, s.to_i)
    puts "enter y to enter more time value"
    continue = gets.chomp 
  end
  puts("#{day} days #{hour}:#{minute}:#{second}")
end

time_additon