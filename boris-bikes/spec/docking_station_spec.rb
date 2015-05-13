require 'docking_station'

describe DockingStation do

  describe 'release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'releases working bikes' do
      subject.dock Bike.new
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe 'dock' do

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'raises an error when it is full' do
      subject.dock Bike.new
      expect {subject.dock DockingStation.new }.to raise_error 'Docking station is full'
    end
  end

end