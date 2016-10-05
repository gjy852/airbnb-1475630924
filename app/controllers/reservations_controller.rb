class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.availability_date = params[:availability_date]
    @reservation.availability_price = params[:availability_price]
    @reservation.listing_id = params[:listing_id]
    @reservation.booked_yes_or_no_id = params[:booked_yes_or_no_id]

    if @reservation.save
      redirect_to "/reservations", :notice => "Reservation created successfully."
    else
      render 'new'
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])

    @reservation.availability_date = params[:availability_date]
    @reservation.availability_price = params[:availability_price]
    @reservation.listing_id = params[:listing_id]
    @reservation.booked_yes_or_no_id = params[:booked_yes_or_no_id]

    if @reservation.save
      redirect_to "/reservations", :notice => "Reservation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])

    @reservation.destroy

    redirect_to "/reservations", :notice => "Reservation deleted."
  end
end
