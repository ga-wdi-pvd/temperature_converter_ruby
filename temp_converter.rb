# two user inputs (gets) and store them in var
# starting temperature value
# temoerature unit (e.g f, C, K)
puts "Enter a temperature to convert: "
starting_temp = gets.chomp.to_i

puts "Enter a temperature unit (f, C, K):"
temp_unit = gets.chomp.to_s

# define (def) method that takes starting
def conver_temp (starting_temp, temp_unit)
  if temp_unit == 'f'
    c = (starting_temp - 32) * 5 / 9
    k = (starting_temp - 32) * 5 / 9 + 273.15
    puts "fahrenheit: #{starting_temp}"
    puts "to Celsius: #{c}"
    puts "to Kelvin: #{k}"
  elsif temp_unit == 'C'
    f = (starting_temp * 9 / 5) + 32
    k = starting_temp + 273.15
    puts "Celsius: #{starting_temp}"
    puts "to fahrenheit: #{f}"
    puts "to Kelvin: #{k}"
  else
    f = (starting_temp - 273.15) * 9 / 5 + 32
    c = starting_temp - 273.15
    puts "Kelvin: #{starting_temp}"
    puts "to fahrenheit: #{f}"
    puts "to Celsius: #{c}"
  end
end

conver_temp(starting_temp, temp_unit)
