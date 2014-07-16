class ChangePriceHourToSpaces < ActiveRecord::Migration
  def change
    change_column(:spaces, :price_day, :decimal, :precision => 8, :scale => 2)
    change_column(:spaces, :price_hour, :decimal, :precision => 8, :scale => 2)
    change_column(:spaces, :price_month, :decimal, :precision => 8, :scale => 2)
    change_column(:spaces, :price_year, :decimal, :precision => 8, :scale => 2)
  end
end
