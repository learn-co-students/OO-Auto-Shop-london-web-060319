require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co = CarOwner.new("Bob")
co1 = CarOwner.new("Lizzie")


m = Mechanic.new("Ernest", "Vintage")
m1 = Mechanic.new("Edgar", "Clunker")
m2 = Mechanic.new("Ludovico", "Sports")


c = Car.new("Ford", "Mustang", "Vintage", co, m)
c1 = Car.new("Fiat", "Multipla", "Clunker", co1, m1)
c2 = Car.new("Ford", "Ka", "Clunker", co1, m1)



binding.pry
0