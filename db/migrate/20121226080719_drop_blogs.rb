class DropBlogs < ActiveRecord::Migration
  def up
    drop_table :blogs
  end

  def down
    create_table :blogs do |t|

      t.timestamps
    end
  end
end
