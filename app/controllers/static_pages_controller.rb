class StaticPagesController < ApplicationController
  def home
  end

  def secret
    if logged_in?
      render 'secret'
    else
      redirect_to login_path
    end
  end
end
