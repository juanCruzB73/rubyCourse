class SessionsController < ApplicationController
    def new
      @user=User.new
    end

    def create
      user = User.find_by(username: params[:session][:username])
      if user && user.authenticate(params[:session][:password])
        session[:user_id]=user.id
        flash[:notice] = "Log in successful"
        redirect_to user
      else
        flash.now[:alert] = "There was something wrong with your credentials"
        render "new"
      end
    end

    def destroy
      session[:user_id]=nil
      flash[:notice] = "logged out"
      redirect_to root_path
    end
end
