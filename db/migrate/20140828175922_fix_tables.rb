class FixTables < ActiveRecord::Migration
  def change

    drop_table :time_table

    create_table :tables do |t|
      t.time :time

      t.belongs_to :stop

      t.timestamps
    end
  end
end
