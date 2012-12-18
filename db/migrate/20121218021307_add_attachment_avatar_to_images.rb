class AddAttachmentAvatarToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :images, :avatar
  end
end
