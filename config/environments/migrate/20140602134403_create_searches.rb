class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :title
      t.integer :city_id
      t.decimal :min_price
      t.decimal :max_price

      t.timestamps
    end
  end
end
