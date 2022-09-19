class MapService

  def self.distance(from, to)
    response = conn.get('/directions/v2/route') do |route|
      route.params['from'] = from
      route.params['to'] = to
    end
    json_parse(response)
  end

  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com') do |f|
      f.params['key'] = ENV['mapquest_key']
    end
  end

  def self.json_parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end