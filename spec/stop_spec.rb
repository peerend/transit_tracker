require 'rails_helper'

describe Stop do

  it {should have_many(:tables)}
  it {should belong_to(:line)}
  it {should belong_to(:station)}

end
