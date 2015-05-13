require_relative 'bike'

class DockingStation

  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock bike
    fail 'Docking station is full' if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def empty?
    bikes.count == 0
  end

  def full?
    bikes.count >= capacity
  end


end