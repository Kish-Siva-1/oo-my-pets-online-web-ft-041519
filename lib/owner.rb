require 'pry'

class Owner
  attr_accessor :name, :pets 
  attr_reader :species
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
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
  
  def pets
    @pets = {:fishes => [], :dogs => [], :cats => [] }
  end 
  
  def buy_fish(fish_name)
    Fish.new(fish_name)
    @pets[:fish] << fish_name 
  end 
  
end

