# require_relative bike.rb
require 'bike'
class DockingStation
  attr_reader :bike_no

   def initialize
     @bike_no = [] 
   end

   def release_bike
     raise 'No bikes available' if empty?
     @bike_no.pop
   end

   def dock_bike(bike)
     raise 'Docking station full' if full?
     @bike_no << bike
   end

   # can only be used inside another method
   private 

   def full?
     if @bike_no.length >= 20
       true
     else
       false
     end
   end


   def empty?
     if @bike_no.length > 0
        false
     else 
        true
     end
   end

end

   




