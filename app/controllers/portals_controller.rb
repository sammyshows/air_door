class PortalsController < ApplicationController
  before_action :set_portal, only: [:index, :show, :new, :create]

  def index
    @portals = Portal.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def set_portal
    @portal = Portal.find(params[:id])
  end

  def portal_params
    @params = params.require(:portal).permit(:name, :description, :price)
  end
end
