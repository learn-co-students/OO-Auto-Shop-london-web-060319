class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanic
    cars.map {|car| car.mechanic}
  end

  def self.average_cars
    n_owners = self.all.count.to_f
    n_cars = Car.all.count.to_f
    n_cars/n_owners  
  end

end
