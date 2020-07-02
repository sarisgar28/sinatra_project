class User < ActiveRecord::Base 

    has_many :cocktails

    has_secure_password 

    validates :username, uniqueness: true

   

  

   

  
end 