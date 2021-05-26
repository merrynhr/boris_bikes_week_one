class DockingStation
  attr_reader :bikes 
  def release_bike
    raise 'No bikes available' unless @bikes
    @bikes
  end
  def dock_bike(bikes)
    raise 'Docking station full' if @bikes
    @bikes = bikes
  end
end



