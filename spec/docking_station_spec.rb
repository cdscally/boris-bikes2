require 'docking_station'

describe DockingStation do
  # it "docking station to release_bike" do
  #   expect(subject).to respond_to :release_bike
  # end
  it { is_expected.to respond_to :release_bike}
end

describe DockingStation do
  it "docking station to release bike" do
    # instance = DockingStation.new
    #expect(instance.release_bike).to be_an_instance_of(Bike)
    expect(subject.release_bike).to be_working
  end
#   it "returns true if bike working" do
#
#   end
end
