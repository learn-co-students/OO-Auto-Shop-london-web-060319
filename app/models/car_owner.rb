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

  def owners_cars
    Car.all.select {|car| car.car_owner == self}
  end

  # def owners_mechanics
  #   Mechanic.all.select {|mechanic| mechanic.car_owner == self}
  # end
 def self.average_cars
   Car.all.length / CarOwner.all.length.to_f
 end

 



end
