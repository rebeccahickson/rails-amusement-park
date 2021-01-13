class UsersController < ApplicationController
  def new; end

  def create
    new_user = User.new(user_params)
    new_user.admin = false if new_user.admin.nil?
    new_user.save
  end

  def show; end

  def user_params
    params.require(:user).permit(:name, :password_digest, :nausea, :happiness, :tickets, :height, :admin)
  end
end
