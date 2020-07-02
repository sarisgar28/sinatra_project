class SessionsController < ApplicationController

    get '/login' do 
        erb :"sessions/login"
    end 

    get '/signup' do 
        erb :'sessions/signup'
    end 
    
    post '/signup' do
        @user = User.new(username: params[:username], password: params[:password])
        if @user.save 
            session[:user_id] = @user.id 
            redirect'/cocktails'
        else
         erb :"sessions/signup"
        end
    end 

    post '/login' do 
         user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect'/cocktails'
        else  
            @error = "Invalid Username or Password"
            erb :"sessions/login"
        
        end 
    end 

    delete '/logout' do 
        session.clear
    end 
end 