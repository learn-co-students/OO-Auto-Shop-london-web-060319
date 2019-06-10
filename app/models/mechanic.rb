class Mechanic

  attr_reader :name, :specialty, :car
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.mechanic == self}
  end
  #.select runs expression for an array

  def car_owners
     cars.map {|car| car.car_owner}
  end
  #.map performs an action on each element within an array

  def car_owner_names
    car_owner.map {|car_owner| car_owner.name}
  end





end
