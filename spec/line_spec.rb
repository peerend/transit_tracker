require 'rails_helper'

describe Line do
  it {should have_many(:stations)}
  it {should have_many(:stops)}
  it {should have_many(:tables)}
  it {should validate_presence_of :name}

  it "should have callback to caps name" do
    new_line = Line.create(name: 'red')
    expect(new_line.name).to eq "Red"
  end
end
