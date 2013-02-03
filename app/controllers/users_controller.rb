class UsersController < ApplicationController
  def index
    render json: users
  end

  def show
    render json: user
  end

  def create
    user = User.new(params[:user])

    if user.save
      render json: user
    else
      render json: user, status: 422
    end
  end

  def update
    if user.update_attributes(params[:user])
      render json: user
    else
      render json: user, status: 422
    end
  end


  private

  def user
    @user ||= User.find(params[:id])
  end

  def users
    @users ||= User.all
  end

end