class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.new(params[:user])

    if user.save
      render json: user
    else
      render json: user, status: 422
    end
  end
end