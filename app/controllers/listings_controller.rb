class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new
    @listing.listing_title = params[:listing_title]
    @listing.listing_description = params[:listing_description]
    @listing.room_or_home = params[:room_or_home]
    @listing.listing_photos_id = params[:listing_photos_id]
    @listing.num_of_bedroom = params[:num_of_bedroom]
    @listing.num_of_bathroom = params[:num_of_bathroom]
    @listing.number_of_beds = params[:number_of_beds]
    @listing.max_occupant = params[:max_occupant]
    @listing.city_id = params[:city_id]
    @listing.neighbourhood_id = params[:neighbourhood_id]
    @listing.policies_id = params[:policies_id]
    @listing.default_price = params[:default_price]
    @listing.host_id = params[:host_id]

    if @listing.save
      redirect_to "/listings", :notice => "Listing created successfully."
    else
      render 'new'
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.listing_title = params[:listing_title]
    @listing.listing_description = params[:listing_description]
    @listing.room_or_home = params[:room_or_home]
    @listing.listing_photos_id = params[:listing_photos_id]
    @listing.num_of_bedroom = params[:num_of_bedroom]
    @listing.num_of_bathroom = params[:num_of_bathroom]
    @listing.number_of_beds = params[:number_of_beds]
    @listing.max_occupant = params[:max_occupant]
    @listing.city_id = params[:city_id]
    @listing.neighbourhood_id = params[:neighbourhood_id]
    @listing.policies_id = params[:policies_id]
    @listing.default_price = params[:default_price]
    @listing.host_id = params[:host_id]

    if @listing.save
      redirect_to "/listings", :notice => "Listing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    redirect_to "/listings", :notice => "Listing deleted."
  end
end
