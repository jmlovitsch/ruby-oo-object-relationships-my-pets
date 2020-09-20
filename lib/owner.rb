class Owner

  attr_reader :name, :species

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

########################

 def cats
  Cat.all.select do |cats|
    cats.owner == self
   end
 end

 def dogs
  Dog.all.select do |dogs|
    dogs.owner == self
  end
 end

 def buy_cat(name)
    Cat.new(name, self)
    cats
 end

 def buy_dog(name)
    Dog.new(name, self)
    dogs
 end

 def walk_dogs
  dogs.each do |dog|
    dog.mood = "happy"
  end
 end

 def feed_cats
  cats.each do |cat|
    cat.mood = "happy"
  end
 end

 def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

 def list_pets
  cat = cats.count
  dog = dogs.count
  "I have #{dog} dog(s), and #{cat} cat(s)."
end



end
