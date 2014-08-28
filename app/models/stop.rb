class Stop < ActiveRecord::Base

  has_many :tables

  belongs_to :line
  belongs_to :station

end
