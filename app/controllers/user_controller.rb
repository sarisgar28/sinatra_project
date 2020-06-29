class UserController < ApplicationController

    get '/dashboard' do
        @u = current_user
        erb :"users/dashboard"
    end


end