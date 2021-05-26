class DockingStation
  attr_reader :bikes 
  def release_bike

    fail 'No bikes available' unless @bikes
    @bikes
  end
  def dock_bike(bikes)
    @bikes = bikes
  end
end



