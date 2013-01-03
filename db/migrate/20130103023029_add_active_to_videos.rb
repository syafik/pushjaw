class AddActiveToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :active, :boolean
  end
end
