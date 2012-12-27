class AddPhoneToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :phone, :string
    add_column :locations, :mobile_phone, :string
  end
end
