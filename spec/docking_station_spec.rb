require 'docking_station'
require 'bike'
# describe DockingStation do 
#     it "releases bike when asked" do
#     expect(DockingStation).to respond_to(:release_bike)
#     end    
# end
#     it "returns bike when passed give me be bike" do
#     expect(DockingStation("give me be a bike")).to eq bike
# end

describe DockingStation do 
    it { is_expected.to respond_to :release_bike}

    it { is_expected.to respond_to :dock_bike}

    # it "returns bike to dock" do 
    #     docking_station = DockingStation.new
    #     bike = Bike.new
    #     expect(docking_station.dock_bike(bike)).to eq(bike) 
    # end
    it { is_expected.to respond_to(:dock_bike).with(1).arguments }
    
    # it "raises error if there are not bikes" do
    #     expect {release_bike}.to raise_error('Sorry, no bike!')
    # end
    #    describe '#release_bike' do
    #      it 'release a bike' do
    #        bike = Bike.new
    #        subject.dock_bike(bike)
    #        expect(subject.release_bike).to eq bike
    #      end
    #    end 

    describe '#release_bike' do 
       it 'raises an error when there are no bikes available' do
         expect {subject.release_bike}.to raise_error('No bikes available')
       end
     end  
    
      describe '#dock_bike' do
        it 'raises an error if docking station full' do  
          DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(Bike.new)}
          expect {subject.dock_bike(Bike.new)}.to raise_error('Docking station full')
      end   
    end

   it 'has a 50 bike capacity when given an argument of 50' do
    docking_station = DockingStation.new(50)
    expect(docking_station.capacity).to eq(50)
   end

end 


