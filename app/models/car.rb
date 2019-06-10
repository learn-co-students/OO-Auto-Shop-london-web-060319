class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
  end

  def self.all
    @@all
  end

  def self.classifications
    Car.all.map {|car| car.classification.uniq}
  end

  def matching_mechanics
    Mechanic.all.select {|mechanic| mechanic.speciality == self.classification}
  end
  
end
