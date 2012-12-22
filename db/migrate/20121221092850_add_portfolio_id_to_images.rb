class AddPortfolioIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :portfolio_id, :integer
  end
end
