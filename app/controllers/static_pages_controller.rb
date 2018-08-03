class StaticPagesController < ApplicationController
  def home
  end

  def secret
    if logged_in?
      render 'secret'
    else
      flash[:danger] = "Petit malin, il va falloir te connecter pour accéder à The SECRET !!"
      redirect_to login_path
    end
  end
end
