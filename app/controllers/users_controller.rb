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
    if @user.save
      flash[:notice] = "You have signed up successfully"
      redirect_to()
    else

    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

  end


end
