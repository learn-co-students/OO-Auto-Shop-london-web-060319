class Car

  @@all  = []

  attr_reader :make, :model, :owner, :mechanic, :classification

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_car_classification
    @@all.map {|car| car.classification}
  end

  def car_classification
    Mechanic.all.select {|mech| mech.specialty == self.mechanic.specialty}
  end

end
