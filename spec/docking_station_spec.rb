require 'docking_station'

# describe DockingStation do 
#     it "releases bike when asked" do
#     expect(DockingStation).to respond_to(:release_bike)
#     end    
# end
#     it "returns bike when passed give me be bike" do
#     expect(DockingStation("give me be a bike")).to eq bike
# end

describe DockingStation do 
    it { is_expected.to respond_to(:release_bike)}
end    
