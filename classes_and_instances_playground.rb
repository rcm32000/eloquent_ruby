# class Refigerator
# end
#
# refrigerator_1 = Refrigerator.new
# p "Number 1: #{refrigerator_1}"
#
# refrigerator_2 = Refrigerator.new
# p "Number 2: #{refrigerator_2}"
#
# refrigerator_3 = Refrigerator.new
# p "Number 3: #{refrigerator_3}"
#
# require 'pry'; binding.pry
# puts "-------"

class Cars
  attr_reader :brand, :model, :color, :horn, :odometer
  def initialize (brand, model, color, horn, start)
    @brand    = brand
    @model    = model
    @color    = color
    @horn     = horn
    @start    = start
  end
  def start
    if @start == true
        "VROOM!"
    else
        "*click* Dead battery."
    end
  end
end

car_1 = Cars.new("Honda","Accord","Silver","Beep Beep",true)
p "My car is a #{car_1.brand} #{car_1.model}, that is #{car_1.color}, and it makes a #{car_1.horn} sound."
puts "#{car_1.start}"

car_2 = Cars.new("Toyota","Camry","Grey","HOOOONKKKKKK",true)
p "My Dad's car is a #{car_2.brand} #{car_2.model}, that is #{car_2.color}, and it makes a #{car_2.horn} sound."
puts "#{car_2.start}"

car_3 = Cars.new("Subaru","Forester","Blue","Beep",false)
p "My Mom's car is a #{car_3.brand} #{car_3.model}, that is #{car_3.color}, and it makes a #{car_3.horn} sound."
puts "#{car_3.start}"

# require 'pry'; binding.pry
# puts "-------"
