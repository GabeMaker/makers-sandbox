feature 'admin changes capacity' do
  scenario 'capacity changes when admin chooses' do
    docking_station = DockingStation.new
    docking_station.capacity = 30
    30.times { docking_station.dock Bike.new }
    expect { docking_station.dock Bike.new }.to raise_error "Docking station is full"
  end
end