class UsersController < ApplicationController
  def index

  end

  def show

    if current_user.id == params[:id].to_i
      render 'show'
      @user = User.find(params[:id])
    else
      render 'access_denied'
    end
  end

  def edit
    if current_user.id == params[:id].to_i
      render 'edit'
      @user = User.find(params[:id])
    else
      render 'access_denied'
    end
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
    user = User.create(user_params)
    redirect_to user_path(user.id)
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
