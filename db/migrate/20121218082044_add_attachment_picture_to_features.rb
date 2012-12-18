class AddAttachmentPictureToFeatures < ActiveRecord::Migration
  def self.up
    change_table :features do |t|
      t.has_attached_file :picture
    end
  end

  def self.down
    drop_attached_file :features, :picture
  end
end
