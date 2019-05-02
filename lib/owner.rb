require 'pry'

class Owner
  attr_accessor
  
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

  

end

