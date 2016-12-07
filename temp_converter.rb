class Temperature
  def initialize(value, unit)
    @value = value.to_f
    @unit = unit.upcase
  end

  def to_fahr!
    if @unit == 'C'
      @value = @value * 1.8 + 32
    elsif @unit == 'K'
      @value = @value * 1.8 - 459.67
    end
    @unit = 'F'

    self
  end

  def to_cels!
    if @unit == 'F'
      @value = (@value - 32) / 1.8
    elsif @unit == 'K'
      @value -= 273.15
    end
    @unit = 'C'

    self
  end

  def to_kel!
    if @unit == 'F'
      @value = @value * 1.8 - 459.67
    elsif @unit == 'C'
      @value += 273.15
    end
    @unit = 'K'

    self
  end

  def to_s
    "#{@value}#{@unit}"
  end
end

puts 'Starting temperature:'
starting_temp = gets.chomp

puts 'Unit (F, C, K):'
starting_unit = gets.chomp

temp = Temperature.new(starting_temp, starting_unit)

puts temp.to_fahr!
puts temp.to_cels!
puts temp.to_kel!
