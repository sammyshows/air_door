class PortalsController < ApplicationController
  before_action :set_portal, only: [:show, :edit, :update, :destroy]

  def index
    @portals = Portal.all
    @markers = @portals.geocoded.map do |portal|
      {
        lat: portal.latitude,
        lng: portal.longitude
      }
    end
  end

  def index
     if params[:query].present?
      @portals = Portal.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @portals = Portal.all
    end
  end

  def show
      @markers = [{
      lat: @portal.latitude,
      lng: @portal.longitude,
    }]
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

  def destroy
    @portal.destroy
    redirect_to dashboard_path, :notice => "Your Portal has been deleted"
  end

  private

  def set_portal
    @portal = Portal.find(params[:id])
  end

  def portal_params
    @params = params.require(:portal).permit(:name, :description, :price, :cover_photo, :address, photos: [])
  end
end

