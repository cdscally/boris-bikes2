require_relative 'bike'

class DockingStation

  attr_reader :bike

  # def initialize(bike)
  #   @docked_bikes = docked_bikes
  # end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

  def docking?(bike)
    
  end

  # def bike
  #   @bike
  # end

end
