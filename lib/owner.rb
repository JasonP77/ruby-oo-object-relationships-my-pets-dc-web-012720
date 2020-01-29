require 'pry'
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

  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self
  end
end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    newArr =[]
    Dog.all.each do |dog|
      if dog.owner == self
        newArr << dog
      end
    end
    newArr.map{|dog| dog.mood = "happy"}
  end

  def feed_cats
    newArr =[]
    Cat.all.each do |cat|
      if cat.owner == self
        newArr << cat
      end
    end
    newArr.map{|cat| cat.mood = "happy"}
  end

  def sell_pets
    ownerCats = []
    ownerDogs = []
    Dog.all.each do |dog|
      if dog.owner == self
        ownerDogs << dog
      end
    end
    Cat.all.each do |cat|
      if cat.owner == self
        ownerCats << cat
      end
    end
    ownerDogs.map{|dog| dog.mood = "nervous"}
    ownerDogs.map{|dog| dog.owner = nil}
    ownerCats.map{|cat| cat.mood = "nervous"}
    ownerCats.map{|cat| cat.owner = nil}
  end




    def list_pets
      countDogs = 0
      countCats = 0
      Dog.all.each do |dog|
        if dog.owner == self
          countDogs += 1
        end
      end
      Cat.all.each do |cat|
        if cat.owner == self
          countCats += 1
        end
      end
      return "I have #{countDogs} dog(s), and #{countCats} cat(s)."
    end
  end



