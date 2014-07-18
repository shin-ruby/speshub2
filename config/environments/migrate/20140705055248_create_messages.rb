class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :sms
      t.integer :send_id
      t.integer :accept_id
      t.integer :space_id

      t.timestamps
    end
  end
end
