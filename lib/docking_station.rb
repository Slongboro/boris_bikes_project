require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :bikes
  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Dock is full' if full?
    @bikes << bike
  end

  private

  def full?
    bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
