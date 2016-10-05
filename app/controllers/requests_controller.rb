class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new
    @request.requestor_id = params[:requestor_id]
    @request.request_text = params[:request_text]
    @request.request_sent_date = params[:request_sent_date]
    @request.request_accept_date = params[:request_accept_date]
    @request.availability_date = params[:availability_date]

    if @request.save
      redirect_to "/requests", :notice => "Request created successfully."
    else
      render 'new'
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])

    @request.requestor_id = params[:requestor_id]
    @request.request_text = params[:request_text]
    @request.request_sent_date = params[:request_sent_date]
    @request.request_accept_date = params[:request_accept_date]
    @request.availability_date = params[:availability_date]

    if @request.save
      redirect_to "/requests", :notice => "Request updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @request = Request.find(params[:id])

    @request.destroy

    redirect_to "/requests", :notice => "Request deleted."
  end
end
