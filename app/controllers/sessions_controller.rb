class SessionsController < ApplicationController
  def new
    byebug
    @user = User.new
  end

  def create
    byebug
    if @user = User.find_by(name: params[:user][:name])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end
end
