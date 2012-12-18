class ImagebleToImages < ActiveRecord::Migration
  def up
    add_column :images, :imageable_id, :integer
    add_column :images, :imageable_type, :string
  end

  def down
    remove_column :images, :imageable_id
    remove_column :images, :imageable_type
  end
end
