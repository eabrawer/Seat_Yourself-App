class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :reservation_time
      t.belongs_to :user
      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
