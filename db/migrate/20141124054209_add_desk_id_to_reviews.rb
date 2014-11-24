class AddDeskIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :desk_id, :integer
  end
end
