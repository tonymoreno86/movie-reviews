class AddMainImageToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :main_image, :string
  end
end
