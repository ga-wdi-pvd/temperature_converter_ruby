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
    puts 'to Fahrenheit: ' << (temp_k * 1.8 -473.67).to_s
    puts 'to Celsius: '    << (temp_k - 273.15).to_s
    puts 'Kelvin: '        << init_val
  else
    puts 'The unit you entered was invalid, plase try again.'
  end
end

convert_temp( init_val, init_unit )
