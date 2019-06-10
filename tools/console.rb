require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


co1 = CarOwner.new("Hank")
co2 = CarOwner.new("Frank")

m1 = Mechanic.new("Bob", "tank")
m2 = Mechanic.new("Jeff", "muscle")

c1 = Car.new("panza", "1000", "tank", co1, m1)
# c2 = Car.new("ferrari", "f40", "supercar")
c3 = Car.new("ford", "mustang", "muscle", co2, m2)



binding.pry

# 


