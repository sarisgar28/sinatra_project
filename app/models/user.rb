class User < ActiveRecord::Base 

    has_many :cocktails

    has_secure_password 

    validates :username, uniqueness: true

    #create 

  

   # post '/cocktails' do 
    #    cocktails.create(new_cocktails: params[:new_cocktails])
     #   erb :login 
   # end 

    #read 

    #get '/cocktails' do 
     #   @cocktails = cocktail.all 
      #  erb :home 
   # end 

    #update 

    #get '/cocktails/:id/edit' do 
    #    erb :edit 
    #end 

    #patch '/cocktails/:id' do 

    #end 

    #delete 

    #delete '/cocktails/:id' do 
     #   erb :edit
    #end 
end 