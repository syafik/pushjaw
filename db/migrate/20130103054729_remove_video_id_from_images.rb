class RemoveVideoIdFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :video_id
  end

  def down
    add_column :images, :video_id, :integer
  end
end
