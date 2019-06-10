class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all
    # Get a list of all mechanics
    @@all
  end

  def cars
    # Get a list of all cars that a mechanic services
    Car.all.select{|c| c.mechanic == self}
  end

  def car_owners
    # Get a list of all the car owners that go to a specific mechanic
    cars.collect(&:owner)
  end

  def car_owner_names
    # Get a list of the names of all car owners who go to a specific mechanic
    car_owners.collect(&:name)
  end




end
