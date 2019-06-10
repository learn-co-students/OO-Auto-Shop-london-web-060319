class Car

  attr_reader :make, :model, :mechanic, :car_owner, :classification
  @@all = []

  def initialize(make, model, mechanic, car_owner, classification)
    @make = make
    @model = model
    @mechanic = mechanic
    @car_owner = car_owner
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end


end
