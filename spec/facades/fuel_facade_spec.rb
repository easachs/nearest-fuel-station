require 'rails_helper'

RSpec.describe FuelFacade do
  it 'returns a fuel object' do
    fuel = FuelFacade.nearest_station('1331 17th St LL100, Denver, CO 80202')
    expect(fuel).to be_a(Fuel)
    expect(fuel.address).to eq('1225 17th Street, Suite 130, Denver, CO 80202')
    expect(fuel.fuel_type).to eq('ELEC')
    expect(fuel.name).to eq('CBRE As Agent for EQC Operating Trust')
  end
end