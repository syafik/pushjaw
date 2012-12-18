class DropPortfolios < ActiveRecord::Migration
   def up
    drop_table :portfolios
  end

  def down
    create_table :portfolios do |t|

      t.timestamps
  end
end
end
