class UsersController < ApplicationController
    skip_before_action :authorized!, only: [:create]

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: UserSerializer.new(user), status: :created_at
    end

    def show
        return render json: {error: "Not authorized"}, status: :unauthorized
        user ||= User.find_by_id(session[:user_id])
        render json: UserSerializer.new(user), status: :ok
    end

    private
    
    def user_params
        params.permit(:usrename, :name, :email, :password)
    end
end
