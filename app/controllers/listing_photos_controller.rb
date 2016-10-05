class ListingPhotosController < ApplicationController
  def index
    @listing_photos = ListingPhoto.all
  end

  def show
    @listing_photo = ListingPhoto.find(params[:id])
  end

  def new
    @listing_photo = ListingPhoto.new
  end

  def create
    @listing_photo = ListingPhoto.new
    @listing_photo.listing_id = params[:listing_id]
    @listing_photo.listing_photos = params[:listing_photos]

    if @listing_photo.save
      redirect_to "/listing_photos", :notice => "Listing photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @listing_photo = ListingPhoto.find(params[:id])
  end

  def update
    @listing_photo = ListingPhoto.find(params[:id])

    @listing_photo.listing_id = params[:listing_id]
    @listing_photo.listing_photos = params[:listing_photos]

    if @listing_photo.save
      redirect_to "/listing_photos", :notice => "Listing photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @listing_photo = ListingPhoto.find(params[:id])

    @listing_photo.destroy

    redirect_to "/listing_photos", :notice => "Listing photo deleted."
  end
end
