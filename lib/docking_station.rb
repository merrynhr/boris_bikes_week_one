class DockingStation
  attr_reader :bikes 
  def release_bike
    return Bike.new
  end
  def dock_bike(bikes)
    @bikes = bikes
  end
end



