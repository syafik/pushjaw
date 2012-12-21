class RemoveAttachmentFromHome < ActiveRecord::Migration
  def up
    drop_attached_file :homes, :video
  end

  def down
     change_table :homes do |t|
      t.has_attached_file :video
    end
  end
end
