class Stop < ActiveRecord::Base

  has_many :tables, :dependent => :destroy

  belongs_to :line
  belongs_to :station

  accepts_nested_attributes_for :tables
end


#   , :reject_if => lambda { |a| a[:time].blank? }, :allow_destroy => true
# end


