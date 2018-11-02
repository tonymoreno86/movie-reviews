class AddFieldsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :city, :text
    add_column :reviews, :state, :text
  end
end
