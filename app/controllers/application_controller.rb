class ApplicationController < Sinatra::Base 

    set :views, ->{File.join(root,'../views')}
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"]

    get '/' do 
        erb :home
    end
   
    get '/Login' do 
        redirect '/login'
    end 
    get '/Signup' do 
        redirect '/signup'
    end 

    helpers do 

        def current_user 
         User.find_by(id: session[:user_id])
        end 

        def logged_in?
            !!current_user
        end 
        
        def authenticate
            redirect 'sessions/Login' if !logged_in?
        end
    
    end 
    get '/delete' do 
        erb :home
    end 



end 