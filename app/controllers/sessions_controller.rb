class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
    
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          render json: { user: user, message: "Successfully logged in!" }
        else
          render json: { error: "Invalid email or password" }, status: :unprocessable_entity
        end
      end
end
