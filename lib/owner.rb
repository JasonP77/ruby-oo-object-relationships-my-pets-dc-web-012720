class Owner
  attr_reader :name, :species
  @@every = []
  def initialize(name)
    @name = name
    @species = "human"
    @@every << self
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@every
  end

  def self.count
    @@every.length
  end

  def self.reset_all
    @@every = []
  end
end


