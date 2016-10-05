class ListingReviewsController < ApplicationController
  def index
    @listing_reviews = ListingReview.all
  end

  def show
    @listing_review = ListingReview.find(params[:id])
  end

  def new
    @listing_review = ListingReview.new
  end

  def create
    @listing_review = ListingReview.new
    @listing_review.create_listing_review_date = params[:create_listing_review_date]
    @listing_review.reservations_id = params[:reservations_id]
    @listing_review.listing_review_accuracy = params[:listing_review_accuracy]
    @listing_review.listing_review_communication = params[:listing_review_communication]
    @listing_review.listing_review_cleanliness = params[:listing_review_cleanliness]
    @listing_review.listing_review_location = params[:listing_review_location]
    @listing_review.listing_review_check_in = params[:listing_review_check_in]
    @listing_review.listing_review_value = params[:listing_review_value]
    @listing_review.listing_review_text = params[:listing_review_text]
    @listing_review.listing_id = params[:listing_id]

    if @listing_review.save
      redirect_to "/listing_reviews", :notice => "Listing review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @listing_review = ListingReview.find(params[:id])
  end

  def update
    @listing_review = ListingReview.find(params[:id])

    @listing_review.create_listing_review_date = params[:create_listing_review_date]
    @listing_review.reservations_id = params[:reservations_id]
    @listing_review.listing_review_accuracy = params[:listing_review_accuracy]
    @listing_review.listing_review_communication = params[:listing_review_communication]
    @listing_review.listing_review_cleanliness = params[:listing_review_cleanliness]
    @listing_review.listing_review_location = params[:listing_review_location]
    @listing_review.listing_review_check_in = params[:listing_review_check_in]
    @listing_review.listing_review_value = params[:listing_review_value]
    @listing_review.listing_review_text = params[:listing_review_text]
    @listing_review.listing_id = params[:listing_id]

    if @listing_review.save
      redirect_to "/listing_reviews", :notice => "Listing review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @listing_review = ListingReview.find(params[:id])

    @listing_review.destroy

    redirect_to "/listing_reviews", :notice => "Listing review deleted."
  end
end
