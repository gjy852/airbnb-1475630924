class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    @message.initiated_by_id = params[:initiated_by_id]
    @message.recipient_id = params[:recipient_id]
    @message.message_text = params[:message_text]
    @message.message_created_date = params[:message_created_date]
    @message.message_edited_date = params[:message_edited_date]
    @message.listing_id = params[:listing_id]

    if @message.save
      redirect_to "/messages", :notice => "Message created successfully."
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])

    @message.initiated_by_id = params[:initiated_by_id]
    @message.recipient_id = params[:recipient_id]
    @message.message_text = params[:message_text]
    @message.message_created_date = params[:message_created_date]
    @message.message_edited_date = params[:message_edited_date]
    @message.listing_id = params[:listing_id]

    if @message.save
      redirect_to "/messages", :notice => "Message updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy

    redirect_to "/messages", :notice => "Message deleted."
  end
end
