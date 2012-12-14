class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :address
      t.string :title
      t.text :comment

      t.timestamps
    end
  end
end
