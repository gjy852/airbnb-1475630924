class NeighbourhoodsController < ApplicationController
  def index
    @neighbourhoods = Neighbourhood.all
  end

  def show
    @neighbourhood = Neighbourhood.find(params[:id])
  end

  def new
    @neighbourhood = Neighbourhood.new
  end

  def create
    @neighbourhood = Neighbourhood.new
    @neighbourhood.neighbourhoods_list = params[:neighbourhoods_list]
    @neighbourhood.city_id = params[:city_id]

    if @neighbourhood.save
      redirect_to "/neighbourhoods", :notice => "Neighbourhood created successfully."
    else
      render 'new'
    end
  end

  def edit
    @neighbourhood = Neighbourhood.find(params[:id])
  end

  def update
    @neighbourhood = Neighbourhood.find(params[:id])

    @neighbourhood.neighbourhoods_list = params[:neighbourhoods_list]
    @neighbourhood.city_id = params[:city_id]

    if @neighbourhood.save
      redirect_to "/neighbourhoods", :notice => "Neighbourhood updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @neighbourhood = Neighbourhood.find(params[:id])

    @neighbourhood.destroy

    redirect_to "/neighbourhoods", :notice => "Neighbourhood deleted."
  end
end
