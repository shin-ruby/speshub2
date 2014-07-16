class AddSpaceTokenToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :space_token, :string
  end
end
