class SearchController < ApplicationController

  def index
    @fuel = FuelFacade.nearest_station(params[:location])
    @map = MapFacade.distance(params[:location], @fuel.address)
  end

end