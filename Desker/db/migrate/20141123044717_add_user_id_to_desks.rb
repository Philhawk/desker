class AddUserIdToDesks < ActiveRecord::Migration
  def change
    add_column :desks, :user_id, :integer
  end
end
