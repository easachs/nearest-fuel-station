class FuelService

  def self.nearest_station(location)
    response = conn.get('/api/alt-fuel-stations/v1/nearest.json') do |route|
      route.params['location'] = location
      route.params['fuel_type'] = 'ELEC'
      route.params['limit'] = 1
    end
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov') do |f|
      f.params['api_key'] = ENV['nrel_key']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end