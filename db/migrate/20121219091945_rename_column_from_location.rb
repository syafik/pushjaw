class RenameColumnFromLocation < ActiveRecord::Migration
  def up
    rename_column :locations, :lon, :lng
  end

  def down
    rename_column :locations, :lng, :lon
  end
end
