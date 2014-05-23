class AddAddressToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :address, :string
  end
end
