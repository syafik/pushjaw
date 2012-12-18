class RemoveReferenceimageableFromImages < ActiveRecord::Migration
   def up
    remove_column :images, :imageable_id
    remove_column :images, :imageable_type

  end

  def down
    add_column :images, :imageable_id
    add_column :images, :imageable_type
  end
end
