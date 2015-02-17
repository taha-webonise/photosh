class UserController < ApplicationController
  def index
    @users = User.all
  end

  def create
    User.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to users_path
  end
end
