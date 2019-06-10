class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def all_cars
  Car.all.select {|car| car.mechanic == self}
end

def car_owners
  all_cars.map {|car| car.owner}
end

def car_owner_names
  all_cars.map {|car| car.owner.name}
end

end
