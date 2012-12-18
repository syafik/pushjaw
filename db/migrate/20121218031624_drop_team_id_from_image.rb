class DropTeamIdFromImage < ActiveRecord::Migration
  def up
    remove_column :images, :team_id
  end

  def down
    add_column :images, :team_id, :integer
  end
  
end
