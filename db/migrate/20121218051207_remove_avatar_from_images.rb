class RemoveAvatarFromImages < ActiveRecord::Migration
  def up
    drop_attached_file :images, :avatar
  end

  def down
    has_attached_file :images, :avatar
  end
end
