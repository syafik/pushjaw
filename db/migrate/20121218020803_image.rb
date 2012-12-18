class Image < ActiveRecord::Migration
  def up
    create_table :images do |t|

      t.timestamps
    end

    def down
      drop_table :images
    end
  end
end