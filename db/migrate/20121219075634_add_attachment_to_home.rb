class AddAttachmentToHome < ActiveRecord::Migration
  change_table :homes do |t|
      t.has_attached_file :video
    end
end
