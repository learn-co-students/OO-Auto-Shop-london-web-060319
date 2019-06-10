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
    Car.all.select{|car| car.owner == self}
  end

  def mechanics
    # car_class = cars.map{|car| car.classification}
    cars.map{|car| car.mechanic}
  end

  def self.average
    Car.all.count/all.count
  end


end
