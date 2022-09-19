require 'rails_helper'

RSpec.describe MapFacade do
  it 'returns a map object' do
    map = MapFacade.distance('1331 17th St LL100, Denver, CO 80202', '1225 17th Street, Suite 130, Denver, CO 80202')
    expect(map).to be_a(Map)
    expect(map.distance).to eq(0.081)
    expect(map.time).to eq('00:00:18')
  end
end