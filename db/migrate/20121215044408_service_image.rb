class ServiceImage < ActiveRecord::Migration
  def up
    create_table :service_images do |t|
      t.attachment :image
      t.timestamps
  end

  def down
  end
end
end
