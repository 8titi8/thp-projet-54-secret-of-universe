class UsersController < ApplicationController
  def index

  end

  def show
    if current_user.nil?
      render 'access_denied'
    elsif current_user.id == params[:id].to_i
      @user = User.find(params[:id])
      render 'show'
    else
      render 'access_denied'
    end
  end

  def edit
    if current_user.nil?
      render 'access_denied'
    elsif current_user.id == params[:id].to_i
      @user = User.find(params[:id])
      render 'edit'
    else
      render 'access_denied'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      log_in(user)
      flash[:success] = "Bravo, vous êtes bien inscrit.. vous voilà fin prêt à obtenir ce SECRET !"
      redirect_to user_path(user.id)
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to home_path
  end

  private
  def user_params
    params.permit(:username, :email, :password)
  end

end
