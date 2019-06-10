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

  def owned_cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    owned_cars.map {|car| car.mechanic}
  end

  def number_of_cars
    owned_cars.size
  end

  def self.avg_cars
    car_n = @@all.collect {|owner| owner.number_of_cars}
    car_n.sum / car_n.size
  end

end
