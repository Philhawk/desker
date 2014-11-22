class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.string :title
      t.string :description
      t.text :address
      t.float :latitude
      t.float :longitude
      t.integer :price
      t.string :desk_type
      t.text :thumbnail

      t.timestamps
    end
  end
end
