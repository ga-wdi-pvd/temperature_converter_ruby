puts 'What is the starting temperature value? (only numbers)'
init_val = gets.chomp
puts 'What is the starting temperature unit? (f, C, K)'
init_unit = gets.chomp

def convert_temp(init_val, init_unit)
  if init_val.to_i.to_s != init_val
    puts 'The value you entered was invalid, plase try again.'
  elsif init_unit == 'f'
    temp_f = init_val.to_i
    puts 'Fahrenheit: '  << init_val
    puts 'to Celsisus: ' << ((temp_f - 32) / 1.8).to_s
    puts 'to Kelvin: '   << ((temp_f + 459.67) / 1.8).to_s
  elsif init_unit == 'C'
    temp_c = init_val.to_i
    puts 'to Fahrenheit: ' << (temp_c * 1.8 + 32).to_s
    puts 'Celsius: '       << init_val
    puts 'to Kelvin: '     << (temp_c + 273.15).to_s
  elsif init_unit == 'K'
    temp_k = init_val.to_i
    puts 'to Fahrenheit: ' << (temp_k * 1.8 - 473.67).to_s
    puts 'to Celsius: '    << (temp_k - 273.15).to_s
    puts 'Kelvin: '        << init_val
  else
    puts 'The unit you entered was invalid, plase try again.'
  end
end

convert_temp( init_val, init_unit )




class TemperatureConverter
puts "Type '1' to convert from Celsius to Fahrenheit
OR Type '2' to convert from Fahrenheit to Celsius
OR Type '3' to convert from Kelvin to Fahrenheit
OR Type '4' to convert from Kelvin to Celsius
OR Type '5' to convert from Celsius to Kelvin
OR Type '6' to convert from Fahrenheit to Kelvin \n"

conversiontype = gets.chomp

if conversiontype == '1'
   puts "Enter Celsius Temperature: \n"
   celtemp = gets.chomp
   tempinfahren = (celtemp * (9.0 / 5.0)) + 32
   puts "#{celtemp} degrees Celsius is equal to #{tempinfahren} degrees Fahrenheit"

elsif conversiontype == '2'
  puts "Enter Fahrenheit Temperature: \n"
  fahrentemp = gets.chomp
        celtemp = (fahrentemp - 32) * 5.0 / 9.0
puts "#{fahrentemp} degrees Fahrenheit is equal to #{celtemp} degrees Celsius"

    if conversiontype == '3'
      puts "Enter Kelvin Temperature: \n"
        kelvtemp = gets.chomp
        tempinfahren = (kelvtemp * (9.0 / 5.0)) - 459.67
        puts "#{celtemp} degrees Kelvin is equal to #{tempinfahren} degrees Fahrenheit"

      elsif conversiontype == '4'
              puts "Enter Kelvin Temperature: \n"
              kelvtemp = gets.chomp
              tempincel = (kelvtemp - 273.15 )
              puts "#{kelvtemp} degrees Kelvin is equal to #{tempincel} degrees Celsius"

     elsif conversiontype == '5'
                 puts "Enter Celsius Temperature: \n"
                 celtemp = gets.chomp
                 tempinkelv = (celtemp + 273.15 )
                 puts "#{celtemp} degrees Celsius is equal to #{tempinkelv} degrees Kelvin"

      elsif conversiontype == '6'
              puts "Enter Fahrenheit Temperature: \n"
               fahrentemp = gets.chomp
                    tempinkelv = (fahrenheit + 459.67) * 5.0 / 9.0
                    puts "#{fahrentemp} degrees Fahrenheit is equal to #{tempinKelv} degrees Kelvin"

            else
            puts 'The unit you entered was invalid, plase try again.'
    end
