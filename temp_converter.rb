
puts 'what is the temperature'
temp = gets.chomp
puts 'what unit would you like to use (F,K,C)'
unit = gets.chomp

def converter_temp(temp, unit)
    if temp.to_s != temp
        puts 'invalid temperature'
    elsif unit == 'f' || 'f'.upcase
        temp_to_f = temp.to_i
        puts 'Fahrenheit: ' << temp
        puts 'to Celsius: ' << ((temp_to_f - 32) / 1.8).to_s
        puts 'to Kelvin: ' << ((temp_to_f + 459.67) / 1.8).to_s
    elsif unit == 'c' || 'c'.upcase
        temp_to_c = temp.to_i
        puts 'to Fahrenheit: ' << (temp_to_c * 1.8 + 32).to_s
        puts 'Celsius: '       << temp
        puts 'to Kelvin: '     << (temp_to_c + 273.15).to_s
    elsif init_unit == 'k' || 'k'.upcase
        temp_to_k = temp.to_i
        puts 'to Fahrenheit: ' << (temp_to_k * 1.8 - 473.67).to_s
        puts 'to Celsius: '    << (temp_to_k - 273.15).to_s
        puts 'Kelvin: '        << temp
    else
        puts 'The unit you entered was invalid, plase try again.'
   end
end

converter_temp(temp,unit)
