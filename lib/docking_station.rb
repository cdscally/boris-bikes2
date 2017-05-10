require_relative 'bike'

class DockingStation

  attr_reader :bike

<<<<<<< HEAD
=======

>>>>>>> c8c5a28db4a62df16ed4e102d2ae33e3f5ed391e
  def release_bike
    raise 'No bikes available' unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

<<<<<<< HEAD
  def docking?(bike)
  end
=======
>>>>>>> c8c5a28db4a62df16ed4e102d2ae33e3f5ed391e
end
