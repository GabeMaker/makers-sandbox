require_relative 'bike'

class DockingStation

  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'No bikes available' if none_working?
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

  def none_working?
    working_bikes = bikes.select {|bike| bike.working?}
    working_bikes.empty?
  end

end