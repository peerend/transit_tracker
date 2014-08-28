class CreateTransits < ActiveRecord::Migration
  def change

    create_table :stations do |t|
      t.string :name

      t.timestamps
    end

    create_table :lines do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :stations, :lines, :table_name => :stops

    create_table :time_table do |t|
      t.time :time

      t.belongs_to :stop

      t.timestamps
    end
  end
end
