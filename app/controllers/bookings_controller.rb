class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @portal = Portal.find(params[:portal_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @portal = Portal.find(params[:portal_id])
    @booking.portal = @portal
    @booking.user = current_user

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find_by(params[:portal_id])
    @booking.destroy
    redirect_to dashboard_path, :notice => "Your booking has been deleted"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
