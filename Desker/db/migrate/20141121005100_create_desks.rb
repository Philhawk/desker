class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.boolean :availability
      t.text :amenities
      t.string :desk_type
      t.text :thumbnail

      t.timestamps
    end
  end
end
