class Stop < ActiveRecord::Base

  has_many :tables



  belongs_to :line
  belongs_to :station

  accepts_nested_attributes_for :tables, :reject_if => :all_blank, :allow_destroy => true
end
