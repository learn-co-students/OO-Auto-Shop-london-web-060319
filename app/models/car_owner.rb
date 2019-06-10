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

  def car_list
    Car.all.select {|c| c.owner == self}
  end

  def mechanic_list
    Car.all.collect {|c| c.mechanic if c.owner == self}
  end

  def self.average_car_count
    Car.all.length / all.length
  end

end
