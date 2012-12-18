class RemoveTypeFromImage < ActiveRecord::Migration
  def up
    remove_column :images, :type
  end

  def down
    add_column :images, :type
  end
end
