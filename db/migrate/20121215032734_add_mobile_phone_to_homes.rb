class AddMobilePhoneToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :mobile_phone, :string
  end
end
