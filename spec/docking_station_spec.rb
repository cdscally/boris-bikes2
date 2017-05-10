require ‘docking_station’

describe DockingStation do
<<<<<<< HEAD
 it { is_expected.to respond_to :release_bike}
end

describe DockingStation do
 it “docking station to release bike” do
   expect(subject.release_bike).to be_working
 end
=======
  it { is_expected.to respond_to :release_bike}


  # it "docking station to release bike" do
  #   expect(subject.release_bike).to be_working
  # end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}
  it { is_expected.to respond_to(:bike)}
>>>>>>> c8c5a28db4a62df16ed4e102d2ae33e3f5ed391e

 it { is_expected.to respond_to(:dock_bike).with(1).argument}
 it { is_expected.to respond_to(:bike)}

 it “docks something” do
   bike = Bike.new
   expect(subject.dock_bike(bike)).to eq bike
 end

 it “returns bikes at dock station” do
   bike = Bike.new
   subject.dock_bike(bike)
   expect(subject.bike).to eq bike
 end

<<<<<<< HEAD
=======
  it "returns bikes at dock station" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

>>>>>>> c8c5a28db4a62df16ed4e102d2ae33e3f5ed391e
end
