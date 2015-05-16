feature 'member of public returns bike' do
  scenario 'bike cannot be docked when station is full' do
    docking_station = DockingStation.new
    docking_station.capacity.times { docking_station.dock Bike.new }
    expect { docking_station.dock Bike.new }.to raise_error 'Docking station is full'
  end

  scenario 'bike can be reported broken when returned' do
    docking_station = DockingStation.new
    bike = Bike.new
    bike.report_broken
    expect(bike).to_not be_working
    expect { docking_station.dock bike }.not_to raise_error
  end

end