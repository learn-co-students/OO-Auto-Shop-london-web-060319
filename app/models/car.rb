class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    # Get a list of all cars
    @@all
  end

  def self.car_classifications
    # Get a list of all car classifications
    @@all.collect(&:classification)
  end

  def mechanic_match
    # Get a list of mechanics that have an expertise that matches the car classification
    Mechanic.all.select{|m| m.specialty == self.classification}
  end

end
