class ApplicationController < Sinatra::Base 

    set :views, ->{File.join(root,'../views')}
    enable :session
    set :session_secret, ENV["SESSION_SECRET"]

    get '/' do 
        erb :home
    end
   
    get '/sessions/Login' do 
        "Welcome Cocktail Lover"
    end 
    get '/Signup' do 
        "Please Sign Up!"
    end 

    post '/sessions/login' do 
        "Cocktail Description!"
    end 
    
    helpers do 

        def user 
            @u ||= User.find_by(id: session[:user_id])
        end 

        def logged_in?
            !!@u
        end 
        
        def authenticate
            redirect 'sessions/Login' if !logged_in?
        end
    
    
    
    
    end 



end 