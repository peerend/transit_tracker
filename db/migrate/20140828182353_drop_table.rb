class DropTable < ActiveRecord::Migration
  def change

    drop_table :stops

    create_join_table :lines, :stations, :table_name => :stops

  end
end
