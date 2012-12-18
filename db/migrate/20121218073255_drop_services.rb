class DropServices < ActiveRecord::Migration
  def up
    drop_table :services
  end

  def down
    create_table :services do |t|

      t.timestamps
  end
end
end