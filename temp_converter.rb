puts "Temperature Converter"
# store variables
temp_unit = []
scale_to = ["f", "C", "k"]
scale_from = ["f", "C", "k"]
# Temperature scales
"f" = fahrenheit
"C" = Celsius
"k" = Kelvin

# user inputs numerical value for Temperature
gets temp_unit.chomp
# user indicates the scale Temperature is in
gets scale_from.chomp
# user idicates the scale they want returned
gets scale_to.chomp
# Temperature conversion method
convert_temp = ()

# user wants fahrenheit to Celsius
if scale_from == "f" && scale_to == "C"
  (temp_unit - 32) * (5.0 / 9)
  return i + scale_to "C"
  # user wants Celsius to fahrenheit
elsif scale_from == "C" && scale_to == "f"
  temp_unit * (9.0 / 5) + 32
  return i + scale_to "f"
  # user wants Kelvin to fahrenheit
elsif scale_from == "k" && scale_to == "f"
  (temp_unit  × 5/9) - 459.67
  return i + scale_to "f"
  # user wants Kelvin to Celsius
elsif scale_from == "k" && scale_to == "C"
  temp_unit - 273.15
  return i + scale_to "C"
  # user wants fahrenheit  to Kelvin
elsif scale_from == "f" && scale_to == "k"
  (temp_unit  + 459.67) × 5/9
    return i + scale_to "k"
    # user wants Celsius to Kelvin
elsif scale_from == "C" && scale_to == "k"
    temp_unit + 273.15
    return i + scale_to "k"
else

end
