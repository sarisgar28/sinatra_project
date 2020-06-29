class Cocktail < ActiveRecord::Base 

    belongs_to :user 

   def to_s
    "c{cocktail.name.capitalize}"
   end 

   def description 
    "c{cocktail.description}"
   end 
end 