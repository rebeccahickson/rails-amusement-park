class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if (@user = User.create(user_params))
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @current_user = current_user
  end

  def index; end

  def user_params
    params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
  end
end
