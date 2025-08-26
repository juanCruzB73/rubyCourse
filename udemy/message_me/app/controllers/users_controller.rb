class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :destroy, :update ]
  def index
    @users=User.all
  end
  def show
  end
  def new
    @user=User.new
  end
  def create
    if @user.new(user_params)
      flash[:notice] = "user created."
      redirect_to root_path
    else
      flash[:notice] = "user could not be created."
      redirect_to new_user_path
    end
  end
  def update
    if @user.update(user_params)
      flash[:notice] = "user updated."
      redirect_to user_path(@user)
    end
  end
  def destroy
    if @user.destroy
      redirect_to root_path
      flash[:notice] = "User deleted."
    else
      flash[:alert] = "User could not be deleted."
      redirect_to user_path(@user)
    end
  end
  private
    def set_user
      @user=User.find(params[:id])
    end
    def user_params
      params.require(:user).permit :username, :password
    end
end
