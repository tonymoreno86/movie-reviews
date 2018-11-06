class AddAttachementToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :attachement, :string
  end
end
