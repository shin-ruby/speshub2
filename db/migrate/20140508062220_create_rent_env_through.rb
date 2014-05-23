class CreateRentEnvThrough < ActiveRecord::Migration
  def change
    create_table :rent_env_throughs do |t|
      t.integer :space_id
      t.integer :rent_env_id
    end
  end
end
