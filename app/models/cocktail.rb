class Cocktail < ActiveRecord::Base 

    belongs_to :user 
    attr_accessor :name, :ingridients

    @@all = []

    def initialize(name,ingridients)
        @name = name 
        @ingridients = ingridients
        @@all << self 
    end 

   def to_s
    "{cocktail.name.capitalize}"
   end 

   
   def self.all 
     @@all 
   end 


end 