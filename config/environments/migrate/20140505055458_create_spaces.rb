class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :title
      t.text :content
      t.string :detailed_choose
      t.decimal :price_hour
      t.decimal :price_day
      t.decimal :price_month
      t.decimal :price_year

      t.references :space_setting, index: true
      t.references :user_group, index: true
      t.references :rent_env, index: true
      t.references :city, index: true
      t.references :atmosphere, index: true
      t.timestamps
    end
  end
end
