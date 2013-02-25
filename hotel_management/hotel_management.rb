require 'json'
class HotelManagement
  
  def read_file
    file_name = 'hotels.json'
    file_data = File.open(file_name).read

  end

  def parse_json(file_data)
    parsed_data = JSON.parse(file_data)
    p parsed_data
    puts puts puts puts
    parsed_data.each do |element|
      p element['Hotel_name']
      p element['rate']
      
      # element['seasonal_rates'].each do |element1|
      #   p element1
      # end

      # element.each do |element1|
      #   p element1
      # end
    end
  end
end

object1 = HotelManagement.new
file_data = object1.read_file
object1.parse_json(file_data) 
