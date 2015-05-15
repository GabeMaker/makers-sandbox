require 'docking_station'

describe DockingStation do

  describe 'release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'releases working bikes' do
      subject.dock Bike.new
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'raises an error when there are no bikes' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'raises an error when there are no working bikes' do
      bike = Bike.new
      bike.report_broken
      subject.dock bike
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    xit 'releases working bikes if some are broken' do
      working = Bike.new
      subject.dock working
      broken = Bike.new
      broken.report_broken
      subject.dock broken
      expect(subject.release_bike).to eq working
    end
  end

  describe 'dock' do

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'raises an error when it is full' do
      subject.capacity.times { subject.dock Bike.new }
      expect {subject.dock DockingStation.new }.to raise_error 'Docking station is full'
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'can set a new capacity' do
    subject.capacity = 30
    subject.capacity.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
  end
end