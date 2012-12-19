class AddDetailsToImage < ActiveRecord::Migration
  def change
    add_column :images, :portfolio_id, :integer
    add_column :images, :team_id, :integer
  end
end
