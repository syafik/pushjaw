class RemoveHomeIdFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :home_id
  end

  def down
    add_column :videos, :home_id, :integer
  end
end
