class AddFieldToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :name, :string
  end
end
