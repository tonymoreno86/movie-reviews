class AddFieldToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :main_image, :text
  end
end
