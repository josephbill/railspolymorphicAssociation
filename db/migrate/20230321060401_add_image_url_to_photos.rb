class AddImageUrlToPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :image_url, :string
  end
end
