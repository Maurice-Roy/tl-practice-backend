class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id:params[:id])
    render json: user
  end

  def create
    user = User.new(name:params[:name])
    if user.valid?
      user.save
      render json: user
    else
      render json: {error: "uSer already exists, bRo!!"}
    end
  end
end
