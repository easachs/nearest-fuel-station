class Map

  attr_reader :distance, :time

  def initialize(data)
    @distance = data[:distance]
    @time = data[:formattedTime]
  end

end