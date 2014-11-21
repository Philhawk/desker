class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.text :contact
      t.integer :no_desks
      t.text :description

      t.timestamps
    end
  end
end
