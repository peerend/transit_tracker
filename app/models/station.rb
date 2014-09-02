class Station < ActiveRecord::Base

  validates :name, :presence => true

  has_many :stops
  has_many :lines, through: :stops
  has_many :tables, through: :stops

  before_save :caps

  private
    def caps
      self.name.capitalize!
    end

end
