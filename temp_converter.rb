
def convert_temp(temp, unit, temp_hash)
  if unit == "F"
    temp_hash[:F] = temp
    temp_hash[:C] = (temp_hash[:F] - 32.0) / 1.8
    temp_hash[:K] = (temp_hash[:F] + 459.67) / 1.8
  elsif unit == "C"
    temp_hash[:C] = temp
    temp_hash[:K] = temp_hash[:C] + 273.15
    temp_hash[:F] = temp_hash[:C] * 1.8 + 32.0
  else
    temp_hash[:K] = temp
    temp_hash[:C] = temp_hash[:K] - 273.15
    temp_hash[:F] = temp_hash[:K] * 1.8 - 459.67
  end
end

def print_result(unit, temp_hash)
  case unit
    when "F"
      puts "F:    #{temp_hash[:F].round(2)}"+" \n" + "to C: #{temp_hash[:C].round(2)}"+" \n" +"to K: #{temp_hash[:K].round(2)}"
    when "C"
      puts "C:    #{temp_hash[:C].round(2)}"+" \n" + "to F: #{temp_hash[:F].round(2)}"+" \n" +"to K: #{temp_hash[:K].round(2)}"
    when "K"
      puts "K:    #{temp_hash[:K].round(2)}"+" \n" + "to C: #{temp_hash[:C].round(2)}"+" \n" +"to F: #{temp_hash[:F].round(2)}"
  end
end


start_unit = ''
start_temp = ''
temp_hash = {F:0.0, C:0.0, K:0.0}

until start_temp == "EXIT" do

  print "\nEnter a starting Temperature [or \`Exit\`]: "
  start_temp = gets.chomp

  if start_temp.upcase == "EXIT"
    break
  else
    start_temp = start_temp.to_f
    start_unit = ''

    until (start_unit == "F" || start_unit == "C" || start_unit == "K") do
      print "Enter Temperature Unit [F, C, K]: "
      start_unit = gets.chomp.upcase
    end

    convert_temp(start_temp, start_unit, temp_hash)
    print_result(start_unit, temp_hash)
  end
end
