class Car
  attr_accessor :owner
  attr_reader :make, :model, :classification, :mechanic
  @@all = []

  def initialize(make, model, classification, mechanic, owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    all.map{|car| car.classification}.uniq
  end

  def match_mechanics
    Mechanic.all.select{|mech| mech.specialty == self.classification}
  end



end
