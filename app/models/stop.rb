class Stop < ActiveRecord::Base

  has_many :tables

  belongs_to :line
  belongs_to :station

  accepts_nested_attributes_for :tables

end
