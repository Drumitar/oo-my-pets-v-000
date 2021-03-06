require 'pry'


class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    @species = "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes]  << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    #@pets[:dogs][0].mood = "happy"
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    #@pets[:cats][0].mood = "happy"
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    #@pets[:fishes][0].mood = "happy"
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end

  def sell_pets
    @pets.collect do |species, animals|
      animals.collect do |animals|
        animals.mood = "nervous"
      end
      animals.clear
    end

    #binding.pry

  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end












end
