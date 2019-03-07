class UsersController < ApplicationController

    before_action :get_users, only: [:edit, :update, :destroy, :show]

    	def index
    		@user = User.all
    	end

    	def show
    	end

    	def new
    		@user = User.new
    	end

    	def create
    		@user = User.create(user_params)
    		if @user && @user.authenticate(user_params)
    			redirect_to user_path
    		else
    			flash[:errors] = @user.errors.full_messages
    			render :new
    		end
    	end


    	def edit

    	end

    	def update
    		@user.update(user_params)
    		redirect_to @user
    	end

    	def destroy
    		redirect_to users_path
    	end

    	private

    	def user_params
    		params.require(:user).permit(:username, :fullname, :email, :password, :user_id)
    	end

    	def get_users
    		@user = User.find(params[:id])
    	end

    end
