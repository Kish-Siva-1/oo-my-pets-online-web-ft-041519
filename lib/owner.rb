require 'pry'

class Owner
  attr_accessor :name, :pets 
  attr_reader :species
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => [] }
  end 
  
  def self.all 
    @@all 
  end 

  def self.count
    Owner.all.count
  end 

  def self.reset_all 
    @@all = []
  end 
    
  def species 
    @species = "human"
  end 
  
  def say_species 
    "I am a human."
  end 
  
  def buy_fish(fish_name)
    test_fish = Fish.new(fish_name)
    @pets[:fishes] << test_fish 
  end 
  
  def buy_cat(cat_name)
    test_fish = Cat.new(fish_name)
    @pets[:fishes] << test_fish 
  end
  
end

