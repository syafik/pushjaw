class DropProfiles < ActiveRecord::Migration
  def up
    drop_table :profiles   
  end

  def down
    create_table :profiles
  end
end
