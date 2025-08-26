class MessagesController < ApplicationController
  before_action :set_message, only: [ :show, :destroy, :update ]
  def index
    @messages=Message.all
  end
  def show
  end
  def new
    @message=Message.new
  end
  def create
    @message = current_user.messages.new(message_params)
    if @message.save
      flash[:notice] = "Message sent."
      redirect_to root_path
    else
      flash[:alert] = "Message could not be sent."
      redirect_to edit_user
    end
  end
  def update
    if @message.update(message_params)
      redirect_to root_path
      flash[:notice] = "Message updated."
    else
      flash[:alert] = "Message could not be updated."
      redirect_to root_path
    end
  end
  def destroy
    if @message.destroy
      redirect_to root_path
      flash[:notice] = "Message deleted."
    else
      flash[:alert] = "Message could not be deleted."
      redirect_to root_path
    end
  end
  private
    def set_message
      @message=Message.find(params[:id])
    end
    def message_params
      params.require(:message).permit :body
    end
end
