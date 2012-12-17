class ChangeTypeToServiceOnServices < ActiveRecord::Migration
  def up
    rename_column :services, :type, :service
  end

  def down
    rename_column :services, :service, :type
  end
end
