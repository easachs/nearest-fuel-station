class FuelFacade

  def self.nearest_station(location)
    fuel = FuelService.nearest_station(location)
    Fuel.new(fuel[:fuel_stations].first)
  end
end