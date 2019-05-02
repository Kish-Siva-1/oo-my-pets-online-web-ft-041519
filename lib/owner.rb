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
  
  #def pets
    #@pets = {:fishes => [], :dogs => [], :cats => [] }
  #end 
  
  def buy_fish(fish_name)
    test_fish = Fish.new(fish_name)
    @pets[:fishes] = test_fish 
    #binding.pry
  end 
  
end

