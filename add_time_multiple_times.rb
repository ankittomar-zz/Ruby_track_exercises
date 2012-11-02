$second = 0
def add_time
  flag = 'y'
  while flag == 'y' || flag == 'Y' do
   print("Enter Time value  :  ")
   time1 = gets
   if (/^[0-2]{0,1}[0-3]{1}:[0-5]{1}[0-9]{1}:[0-5]{1}[0-9]{1}$/=~time1)
      time = add(time1)
   else
      puts("wrong format")
   end
    puts "Press 'y' to enter more values."
    flag = gets.rstrip
  end
  puts ("After Adding all time value  ======  #{time}")     
end

def add(time1)
  require 'date'
  require 'time'
  t1 = DateTime.parse(time1)
  time = String.new
  $second = $second+(t1.hour*60*60+t1.min*60+t1.sec) #+ (t2.hour*60*60+t2.min*60+t2.sec)
  puts $second
  hours = $second/(60*60)
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
  min = ($second-hours*(60*60))/60
  time << min.to_s
  time << ':'
  sec = ($second-(hours*60*60)-(min*60))
  time << sec.to_s
end

add_time
