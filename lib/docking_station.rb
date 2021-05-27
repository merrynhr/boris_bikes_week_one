# require_relative bike.rb
require 'bike'
class DockingStation
  attr_reader :bike_no

   def initialize
     @bike_no = [] 
   end

   def release_bike
     raise 'No bikes available' unless @bike_no.length > 0
     @bike_no.pop
   end

   def dock_bike(bike)
     raise 'Docking station full' if @bike_no.length >= 20
     @bike_no << bike
   end
end



