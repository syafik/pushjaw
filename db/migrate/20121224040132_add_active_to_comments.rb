class AddActiveToComments < ActiveRecord::Migration
  def change
    add_column :comments, :active, :boolean
  end
end
