class Stopids < ActiveRecord::Migration
  def change
  drop_table :stops

  create_table :stops do |t|
    t.belongs_to :line
    t.belongs_to :station

    t.timestamps
  end

  end
end
