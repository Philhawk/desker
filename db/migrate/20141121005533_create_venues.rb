class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :features
      t.text :contact
      t.integer :no_desks
      t.text :description

      t.timestamps
    end
  end
end
