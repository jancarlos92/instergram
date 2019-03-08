class LoginController < ApplicationController
    include LoginHelper

def new
end

def create
   @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
     log_in(@user)
     redirect_to @user
   else
     flash[:errors] = ["The username or password you entered was not correct."]
     redirect_to new_login_path
   end
end



def destroy
     current_user
     session[:user_id] = nil
     redirect_to new_login_path
end


end
