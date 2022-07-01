class SillyController < ApplicationController
     protect_from_forgery with: :null_session
    def fun 
        render json: params
    end  

    def thing 
        render json: params
    end 
end 