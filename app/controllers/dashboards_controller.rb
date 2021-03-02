class DashboardsController < ApplicationController

  def show
    @portals = current_user.portals
    @bookings = current_user.bookings
  end

end
