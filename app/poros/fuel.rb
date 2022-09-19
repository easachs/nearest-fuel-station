class Fuel

  attr_reader :address, :name, :fuel_type

  def initialize(data)
    street_address = data[:street_address]
    city = data[:city]
    state = data[:state]
    zip = data[:zip]
    @address = "#{street_address}, #{city}, #{state} #{zip}"
    @name = data[:station_name]
    @fuel_type = data[:fuel_type_code]
  end
end