class MessagesController < ApplicationController
  before_action :set_message, only: [ :show, :destroy, :update, :edit ]
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
      ActionCable.server.broadcast(
        "chatroom_channel",
        { foo: render_to_string(partial: "messages/message", locals: { message: @message }) }
      )
      redirect_to root_path
    else
      flash[:alert] = "Message could not be sent."
      # redirect_to edit_user
    end
  end
  def edit
    @messages = Message.all
    redirect_to chatrooms_path(edit_message_id: @message.id)
  end
  def update
    if @message.update(message_params)
      flash[:notice] = "Message updated."
    else
      flash[:alert] = "Message could not be updated."
    end
    redirect_to chatrooms_path(edit_message_id: @message.id)
  end

  def destroy
    if @message.destroy
      flash[:notice] = "Message deleted."
    else
      flash[:alert] = "Message could not be deleted."
    end
    redirect_to chatrooms_path
  end

  private
    def set_message
      @message=Message.find(params[:id])
    end
    def message_params
      params.require(:message).permit :body
    end
end
