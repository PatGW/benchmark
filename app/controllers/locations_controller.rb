class LocationsController < ApplicationController

  def new
  end

  def create
    @location = Location.new(params[:location])
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end
end
