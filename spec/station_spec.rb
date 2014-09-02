require 'rails_helper'

describe Station do

  it {should have_many(:stops)}
  it {should have_many(:lines)}
  it {should have_many(:tables)}
  it {should validate_presence_of :name}

  it "should have callback to caps name" do
    new_station = Station.create(name: 'red')
    expect(new_station.name).to eq "Red"
  end

end
