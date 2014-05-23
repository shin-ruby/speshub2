class CreateRentEnvs < ActiveRecord::Migration
  def change
    create_table :rent_envs do |t|
      t.string :content

      t.timestamps
    end
  end
end
