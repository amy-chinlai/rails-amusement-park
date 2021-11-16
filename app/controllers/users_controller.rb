class UsersController < ApplicationController
before_action :verify_login
skip_before_action :verify_login, only: [:new, :create, :signin, :login]
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def show
        @user = User.find(params[:id])
    end

    def signin
        @user = User.new
    end

    def login
        puts params
        @user = User.find(params[:user_name])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def destroy
        session.delete :user_id
        redirect_to '/'
    end

    private

    def user_params
        params.require(:user).permit(:name, :id, :height, :happiness, :nausea, :tickets, :password, :admin)
    end



end