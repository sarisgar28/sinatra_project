class SessionsController < ApplicationController

    get '/login' do 
        erb :"sessions/login"
    end 

    get '/signup' do 
        erb :'sessions/signup'
    end 
    
    post '/signup' do
        @u = User.new(username: params[:username], password: params[:password])
        if @u.save 
            session[:user_id] = @u.id 
            redirect'/dashboard'
        else
         erb :"sessions/signup"
        end
    end 

    post '/login' do 
         @u = User.find_by(username: params[:username])
        if @u = User.first(params[:passwrod])
            session[:user_id] = @u.id
            redirect'/dashboard'
        else  
            @error = "Invalid Username or Password"
            erb :"sessions/login"
        
        end 
    end 
end 