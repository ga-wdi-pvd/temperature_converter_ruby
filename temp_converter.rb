puts "What is the temperature?"
userInput = gets.chomp.to_i
puts = "What was the temp type?  k, f, or c?"
tempType = gets.chomp

temp_unit = tempType.toUpperCase();


if (temp_unit == "F")
    kelvin = 5 / 9 * (userInput - 32) + 273
    celsius = 5 / 9 * (userInput - 32)
    puts "fahrenheit: " + userInput + " " + "kelvin: " + Math.round(kelvin) + " " + "celsius: " + Math.round(celsius));
  elsif (temp_unit == "C")
    kelvin = (userInput * 1) + 273;
    fahrenheit = (userInput * 9 / 5) + 32;
    console.log("celsius: " + userInput + " " + "kelvin: " + Math.round(kelvin) + " " + "fahrenheit: " + Math.round(fahrenheit));
  elsif (temp_unit == "K")
    celsius = userInpucdt - 273;
    fahrenheit = (userInput - 273) * 9/5 + 32;
    console.log("kelvin: " + userInput + " " + "fahrenheit: " + Math.round(fahrenheit) + " " + "celsius: " + Math.round(celsius));
  else
    console.log("You did not enter a valid temperature or type.");
