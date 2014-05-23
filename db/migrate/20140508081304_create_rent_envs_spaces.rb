class CreateRentEnvsSpaces < ActiveRecord::Migration
  def change
    create_table :rent_envs_spaces do |t|
      t.integer :rent_env_id
      t.integer :space_id

      t.timestamps
    end
  end
end
