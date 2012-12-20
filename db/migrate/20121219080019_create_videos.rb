class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.has_attached_file :video
      t.integer :home_id

      t.timestamps
    end
  end
end
