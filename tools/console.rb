require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


mechanic1 = Mechanic.new("John", "Antique")
mechanic2 = Mechanic.new("Patrick", "Clunker")
mechanic3 = Mechanic.new("Stu", "Exotic")

car_owner1 = CarOwner.new("Fabio")
car_owner2 = CarOwner.new("Lola")
car_owner3 = CarOwner.new("Paulina")

car1 = Car.new("BMW", "5 Series", mechanic1, car_owner1, "Exotic")
car2 = Car.new("Volkswagon", "Golf", mechanic2, car_owner2, "Clunker")
car2 = Car.new("Porshe", "Cayenne", mechanic3, car_owner3, "Antique")


binding.pry
