print 'What is the temperature?'

degrees = gets.chomp.to_i

print 'type lowercase f or c for fahrenheit or celsius, please:'

typeOfDegrees = gets.chomp

puts 'Now, the amazing Ara, will convert it for u.'

def fToC (degrees)
  celsius = (degrees - 32) * (5.0/9)
  puts "It is now #{celsius} degrees celsius!  Ta da!"
  return celsius
end

def cToF (degrees)
  fahrenheit = degrees * 9 / 5 + 32
  puts "It is now #{fahrenheit} degrees fahrenheit!  Ta da"
  return fahrenheit
end


if typeOfDegrees == "f"
  fToC(degrees)
elsif typeOfDegrees == "c"
  cToF(degrees)
end
