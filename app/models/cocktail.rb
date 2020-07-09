class Cocktail < ActiveRecord::Base 

    belongs_to :user 
  
    def to_s
     "{Cocktail.name.capitalize}"
    end 

end 