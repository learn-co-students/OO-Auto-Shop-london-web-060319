require_relative '../app/models/mechanic.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/car_owner.rb'
require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Aaron")
co2 = CarOwner.new("Ed")
co3 = CarOwner.new("Scott")

mech1 = Mechanic.new("Danielle", "small car")
mech2 = Mechanic.new("Flatiron", "sports car")
mech3 = Mechanic.new("Will", "classic car")

car1 = Car.new("Mini", "Clubman", "small car", mech1, co1)
car2 = Car.new("Ferrari", "California", "sports car", mech2, co3)
car3 = Car.new("Ferrari", "Testa Rossa", "sports car", mech2, co2)
car4 = Car.new("Datsun", "280z", "classic car", mech3, co2)


binding.pry
0