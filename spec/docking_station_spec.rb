require 'docking_station'
describe DockingStation do
  it 'should respond to the method release_bike' do
    expect(subject).to respond_to(:release_bike)
  end
  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    subject.release_bike
    expect(bike).to be_working
  end

  it 'should release a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'should respond to dock bike with one argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'should dock a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'should give an error if no bike' do
  expect { subject.release_bike }.to raise_error 'No bikes available'
end

it 'should give an error if full' do
  bike = Bike.new
  subject.dock(bike)
expect { subject.dock }.to raise_error 'Dock is full'
end

end
