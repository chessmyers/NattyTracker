class ChangeAddressColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :addresses, :type, :address_type
  end
end
