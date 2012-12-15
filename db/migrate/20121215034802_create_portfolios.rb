class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :projectname
      t.attachment :image
      t.text :description

      t.timestamps
    end
  end
end
