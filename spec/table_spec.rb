require 'rails_helper'

describe Table do

  it {should belong_to(:stop)}
  it {should validate_presence_of :time}
end
