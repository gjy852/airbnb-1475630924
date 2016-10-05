class GuestReviewsController < ApplicationController
  def index
    @guest_reviews = GuestReview.all
  end

  def show
    @guest_review = GuestReview.find(params[:id])
  end

  def new
    @guest_review = GuestReview.new
  end

  def create
    @guest_review = GuestReview.new
    @guest_review.create_guest_review_date = params[:create_guest_review_date]
    @guest_review.request_id = params[:request_id]
    @guest_review.rating = params[:rating]
    @guest_review.review_text = params[:review_text]

    if @guest_review.save
      redirect_to "/guest_reviews", :notice => "Guest review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @guest_review = GuestReview.find(params[:id])
  end

  def update
    @guest_review = GuestReview.find(params[:id])

    @guest_review.create_guest_review_date = params[:create_guest_review_date]
    @guest_review.request_id = params[:request_id]
    @guest_review.rating = params[:rating]
    @guest_review.review_text = params[:review_text]

    if @guest_review.save
      redirect_to "/guest_reviews", :notice => "Guest review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @guest_review = GuestReview.find(params[:id])

    @guest_review.destroy

    redirect_to "/guest_reviews", :notice => "Guest review deleted."
  end
end
