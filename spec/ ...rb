require 'docking_station'

describe DockingStation do

 it { is_expected.to respond_to :release_bike}

 # it “docking station to release bike” do
 #   expect(subject.release_bike).to be_working
 # end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}
  it { is_expected.to respond_to(:bike)}

 it 'docks something' do
   bike = Bike.new
   expect(subject.dock_bike(bike)).to eq bike
 end

 it 'returns bikes at dock station' do
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

  # describe '#dock_bike' do
  #   it 'docks a bike' do
  #     bike = Bike.new
  #     #subject.dock_bike(bike)
  #     expect(subject.dock_bike(bike)).to eq bike
  #   end
  # end
  describe '#dock_bike' do
    it 'raises an error when try to dock one more bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect{subject.dock_bike(bike)}.to raise_error 'No Space available'
    end
  end

end
