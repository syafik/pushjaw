class CreateTeams < ActiveRecord::Migration
  def up
    create_table :teams do |t|
      t.string :name
      t.text :title

      t.timestamps
    end
  end
  
  def down
    
  end
end
