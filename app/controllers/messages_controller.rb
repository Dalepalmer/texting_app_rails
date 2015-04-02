class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    if @message = Message.create(message_params)
    flash[:notice] = "Message sent"
    redirect_to '/'
  else
    flash[:alert] = "Message failed"
    render :new
  end
end




private

  def message_params
    params.require(:message).permit(:body, :to, :media_url)
  end
end
