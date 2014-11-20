class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.string :name
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
