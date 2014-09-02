class Table < ActiveRecord::Base

    belongs_to :stop

    validates :time, :presence => true

end
