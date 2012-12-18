class AddTypeToFeature < ActiveRecord::Migration
  def change
    add_column :features, :type, :string
  end
end
