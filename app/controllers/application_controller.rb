class ApplicationController < ActionController::Base
    before_action :setup_user

def setup_user
    @logged_in = !!session[:user_id]
    if @logged_in
        @logged_in_user = User.find(session[:user_id])
    end
    @errors = flash[:errors]
    @message = flash[:message]
end


end
