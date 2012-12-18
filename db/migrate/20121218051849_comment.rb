class Comment < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :name
      t.string :title
      t.string :address
      t.text :comment
      t.timestamps
  end

  def down
    drop_table :comments
  end
end
end
