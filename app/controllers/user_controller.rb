class UserController < ApplicationController

    get '/dashboard' do
        authenticate 
        @u = current_user
        erb :"user/dashboard"
    end

end