class SessionController < ApplicationController
    def new
      @user=User.new
    end

    def create
      user=User.find_by(usensme: params[:session][:usensme])
      if user && user.authenticate(params[:session][:password])
        flash[:notice]="Log in succesfull"
        redirect_to user
      else
        flash.now[:alert]="There was something wrong with you credentials"
        render "new"
      end
    end

    def destroy
    end
end
