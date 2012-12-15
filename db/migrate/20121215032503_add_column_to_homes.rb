class AddColumnToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :address, :string
    add_column :homes, :phone, :string
  end
end
