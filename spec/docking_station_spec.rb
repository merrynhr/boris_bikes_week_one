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

    it "returns bike to dock" do 
        docking_station = DockingStation.new
        bike = Bike.new
        expect(docking_station.dock_bike(bike)).to eq(bike) 
    end
end    



