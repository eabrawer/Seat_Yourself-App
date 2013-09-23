class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :region
      t.string :price
      t.text :description
      t.integer :capacity
      t.integer :timeopen
      t.integer :timeclose
      t.timestamps
    end
  end
end
