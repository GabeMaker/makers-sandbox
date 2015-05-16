require 'docking_station'

describe DockingStation do

  let (:bike) { double :bike, working?: true}
  let (:broken_bike) { double :broken_bike, working?: false}

  describe 'release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'raises an error when there are no bikes' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'raises an error when there are only broken bikes' do
      subject.dock broken_bike
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'releases working bikes if some are broken' do
      subject.dock bike
      subject.dock broken_bike
      expect(subject.release_bike).to eq bike
    end

    it 'releases bikes that have been docked longest' do
      subject.dock bike
      subject.dock double :bike2, working?: true
      expect(subject.release_bike).to eq bike
    end

  end

  describe 'dock' do

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'raises an error when it is full' do
      subject.capacity.times { subject.dock bike }
      expect {subject.dock bike }.to raise_error 'Docking station is full'
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'can set a new capacity' do
    subject.capacity = 30
    subject.capacity.times { subject.dock bike }
    expect { subject.dock bike }.to raise_error 'Docking station is full'
  end
end