# require_relative bike.rb
require 'bike'

#DEFAULT_CAPACITY = 20

class DockingStation
  attr_reader :bike_no, :capacity
  
  DEFAULT_CAPACITY = 20

   def initialize(capacity = DEFAULT_CAPACITY)
     @bike_no = [] 
     @capacity = capacity
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
     if @bike_no.length >= DEFAULT_CAPACITY
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

   




