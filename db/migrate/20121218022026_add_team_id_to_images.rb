class AddTeamIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :team_id, :integer
  end
end
