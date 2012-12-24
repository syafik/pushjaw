class RemovePictureOnFeatures < ActiveRecord::Migration
  def self.up
    drop_attached_file :features, :picture
  end

  def self.down
    change_table :features do |t|
      t.has_attached_file :picture
    end
  end
end
