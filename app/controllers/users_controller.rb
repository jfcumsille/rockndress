class UsersController < ApplicationController
    def index
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            UserMailer.signup_confirmation(@user).deliver
            log_in @user
            redirect_to @user, notice: "Registro Exitoso"
        else
            puts @user.errors.full_messages
        end
    end

    def confirmation
      @user = User.find(params[:user_id])
      @user.is_confirmed = true
      @user.save
      redirect_to @user
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
