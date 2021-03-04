class PortalsController < ApplicationController
  before_action :set_portal, only: [:show, :edit, :update]

  def index
    @portals = Portal.all
    @markers = @portals.geocoded.map do |portal|
      {
        lat: portal.latitude,
        lng: portal.longitude
      }
    end
  end

  def show
  end

  def new
    @portal = Portal.new
  end

  def create
    @portal = Portal.new(portal_params)
    @portal.user = current_user
    if @portal.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @portal.update(portal_params)
      redirect_to dashboard_path
    else
      render :edit
    end

  end

  # def destroy
  #   @portal.user = current_ser
  #   if @portal.destroy
  #     redirect_to dashboard_path
  #   end
  # end

  private

  def set_portal
    @portal = Portal.find(params[:id])
  end

  def portal_params
    @params = params.require(:portal).permit(:name, :description, :price, :cover_photo, photos: [])
  end
end

