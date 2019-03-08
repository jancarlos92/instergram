class StaticPagesController < ApplicationController
include LoginHelper

before_action :current_user


  def home

  end


  def login

      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        log_in(@user)
        redirect_to @user
      else
        flash[:errors] = ["The username or password you entered was not correct."]
        redirect_to new_login_path
      end
  end

end
