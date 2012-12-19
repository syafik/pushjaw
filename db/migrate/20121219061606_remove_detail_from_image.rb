class RemoveDetailFromImage < ActiveRecord::Migration
  def up
    remove_column :images, :team_id
    remove_column :images, :portfolio_id
  end

  def down
    add_column :images, :portfolio_id, :integer
    add_column :images, :team_id, :integer
  end
end
