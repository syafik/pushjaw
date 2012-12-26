class AddGeodcodeAddressToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :geocode_address, :string
  end
end
