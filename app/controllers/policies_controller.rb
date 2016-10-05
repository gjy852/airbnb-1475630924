class PoliciesController < ApplicationController
  def index
    @policies = Policy.all
  end

  def show
    @policy = Policy.find(params[:id])
  end

  def new
    @policy = Policy.new
  end

  def create
    @policy = Policy.new
    @policy.listing_id = params[:listing_id]
    @policy.policies = params[:policies]

    if @policy.save
      redirect_to "/policies", :notice => "Policy created successfully."
    else
      render 'new'
    end
  end

  def edit
    @policy = Policy.find(params[:id])
  end

  def update
    @policy = Policy.find(params[:id])

    @policy.listing_id = params[:listing_id]
    @policy.policies = params[:policies]

    if @policy.save
      redirect_to "/policies", :notice => "Policy updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @policy = Policy.find(params[:id])

    @policy.destroy

    redirect_to "/policies", :notice => "Policy deleted."
  end
end
