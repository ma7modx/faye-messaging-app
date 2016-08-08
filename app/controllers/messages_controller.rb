class MessagesController < ApplicationController
  def new
    @messages = Message.all
  end

  def create
    # debugger
    @message = Message.create!(message_params)
  end

  def message_params
    params.require(:message).permit(:msg)
  end
end
