require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise 'No Space available' if @bikes.length > 19
    @bikes << bike
    bike
  end

end
