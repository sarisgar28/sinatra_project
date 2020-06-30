class UserController < ApplicationController

    get '/dashboard' do
        @u = User.first
        erb :'/dashboard'
    end

    patch '/get_cocktails' do 
        authenticate
       if @u.cocktail
            redirect '/dashboard'
       else
         cocktail = Cocktail.all.sample 
          cocktail.user = @u
          cocktail.save
          redirect '/dashboard'
       end
    end 

end