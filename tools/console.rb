require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tom = CarOwner.new("Tom")
jack = CarOwner.new("Jack")
tina = CarOwner.new("Tina")

corbyn = Mechanic.new("Corbyn", "Sport")
jason = Mechanic.new("Jason", "Old")
may = Mechanic.new("May", "Electric")

bmw = Car.new("BMW", "Speedy", "Sport", tom, corbyn)
audi = Car.new("Audi", "Electricoo", "Electric", tom, may)
mazda = Car.new("Mazda", "Oldiego", "Old", jack, jason)

binding.pry
