class AddTitleToPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :title, :string
  end
end
