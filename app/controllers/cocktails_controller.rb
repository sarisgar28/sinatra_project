class CocktailsController < ApplicationController 
#create 
get '/cocktails/new' do 
    erb :'/cocktails/new'
 end 
#read

    get '/cocktails' do 
       @cocktails = Cocktail.all 
       erb :'/cocktails/dashboard'
   end 

   post '/cocktails' do 
    @cocktail = Cocktail.new(name: params[:name], ingredients: params[:ingredients], private_note: params[:private_note])
    if @cocktail.save
        current_user.cocktails << @cocktail
        redirect "/cocktails/#{@cocktail.id}"
    else
        erb :'cocktails/new'
    end 
   end 
    #update 

    get '/cocktails/:id/edit' do 
        @cocktail = Cocktail.find_by(id: params[:id])
       erb :'/cocktails/edit'
    end 

    patch '/cocktails/:id' do 
        @cocktail = Cocktail.find_by(id: params[:id])
        @cocktail.update(name: params[:name], ingredients: params[:ingredients], private_note: params[:private_note])
        @cocktail.save
        redirect '/cocktails'
    end 

    get '/cocktails/:id' do
        @cocktail = Cocktail.find_by(id: params[:id])
        erb :'/cocktails/show'
    end 
    #delete 

    delete '/cocktails/:id' do 
        @cocktail = Cocktail.find_by(id: params[:id])
        @cocktail.destroy
        redirect '/cocktails'
    end 
end 