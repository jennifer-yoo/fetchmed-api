class UsersController < ApplicationController

    def index
        @users = Users.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user.to_json
    end

    def create
        user = User.new(user_params)

        if user.valid?
            user.save
        end     
    end

    private

    def user_params
        params.require(:user).permit!
    end

end
