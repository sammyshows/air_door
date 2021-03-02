class PortalsController < ApplicationController
  before_action :set_portal, only: [:show, :edit]

  def index
    @portals = Portal.all
  end

  def show
  end

  def new
    @portal = Portal.new
  end

  def create
    @portal = Portal.new(portal_params)

    if @portal.save
      redirect_to portal_path(@portal)
    else
      render :new
    end
  end

  def edit
    redirect_to root_path unless @portal.user == current_user

  end

  private

  def set_portal
    @portal = Portal.find(params[:id])
  end

  def portal_params
    @params = params.require(:portal).permit(:name, :description, :price)
  end
end
