require 'docking_station'

describe DockingStation do
  # it "docking station to release_bike" do
  #   expect(subject).to respond_to :release_bike
  # end
  it { is_expected.to respond_to :release_bike}
end
