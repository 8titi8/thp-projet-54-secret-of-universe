class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find(params[:id]) 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to home_path
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
      if user.save
        log_in(user)
        redirect_to user_path
      else render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to home_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password_digest)
  end

end
