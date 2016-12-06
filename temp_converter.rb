
# correct_inputs = false
# while (not correct_inputs)
  puts "Input your temperature"
  temperature = gets.chomp

  puts "Please input the scale it is in?  C for celsius F = fahrenheit or K for kelvin"
  scale_in = gets.chomp
    # if (scale_in  != celscius or scale_in != fahrenheit or scale_in != kelvin)
    #   puts "please input a proper scale"
    # end

  puts "Please input the scale you want to convert into."
  scale_out = gets.chomp
    # if (scale_in  != celscius or scale_in != fahrenheit or scale_in != kelvin)
    #   puts "please input a proper scale"
    # end
if ( scale_in == "C")
    if (scale_out == "C")
      puts temperature.to_i
    elsif (scale_out == "F")
      puts (temperature.to_i * (9/5)) + 32
    elsif (scale_out == "K")
      puts ((temperature.to_i - 32) * (5/9) + 273.15)
    end
elsif (scale_in == "F")
  if (scale_out == "F")
    puts temperature.to_i
  elsif (scale_out == "C")
    puts (temperature.to_i - 32)*(5/9)
  elsif (scale_out == "K")
    puts temperature.to_i
  end
elsif (scale_in == "K")
  if (scale_out == "K")
    puts temperature.to_i
  elsif (scale_out == "C")
    puts temperature.to_i - 273.15
  elsif (scale_out == "F")
    puts (temperature.to_i - 273.15) * (9/5) + 32
  end
end
