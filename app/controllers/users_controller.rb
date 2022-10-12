class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find_by(id: params[:id])
  end

  def new
    @user = User.new(id: params[:id])
  end

  def create
    @user = User.new(name: params[:name], email: params[:email])
  end

  def edit
    @user= User.find_by(id: params[:id])
  end



end
