require 'pry'

class Owner
  attr_reader :species, :class_species
  
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
    
    puts "I am a human"
  end 
  

end

