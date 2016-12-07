#prompt user for temp and unit type
puts "What is the temp?"
temp = gets.chomp
puts "f, C, or K?"
unit = gets.chomp

def convert_temp temp, unit
  if (unit == 'fahrenheit' or unit =='F')
    return temp.round((temp - 32) * 5/9) + 'C'
  else
    return temp.round(temp +273.15) + 'C'
  end
end
git add 
