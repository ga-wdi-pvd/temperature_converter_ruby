puts "enter temperature"
temp = gets.chomp.to_i
puts "enter temperature unit"
temp_unit = gets.chomp.to_s
temp_unit.upcase!
if temp_unit == 'F'
  celsius = ((temp - 32) * 5 / 9)
  kelvin =((temp - 32) * 5 / 9 + 273)
  puts "Celsius " + celsius
  puts "Kelvin " + kelvin
elsif temp_unit == 'C'
  fahrenheit = ((temp * 9 / 5) + 32)
  kelvin = ((temp + 273))
  puts "Fahrenheit " + fahrenheit.to_s
  puts "Kelvin " + kelvin.to_s
elsif temp_unit == "K"
  fahrenheit = ((temp - 273) * 9 / 5 + 32)
  celsius = (temp - 273)
  puts "Fahrenheit " + fahrenheit
  puts "Celsius " + celsius
end
puts
