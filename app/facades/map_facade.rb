class MapFacade

  def self.distance(from, to)
    map = MapService.distance(from, to)
    Map.new(map[:route])
  end
end