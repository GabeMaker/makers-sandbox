# require 'docking_station'

feature 'member of public accesses bike' do
  scenario 'docking station releases a working bike' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to be_working
  end
end