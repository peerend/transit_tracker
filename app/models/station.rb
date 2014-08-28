class Station < ActiveRecord::Base

  has_and_belongs_to_many :lines
  has_many :tables, through: :stops

end
