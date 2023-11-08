class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true
      t.datetime :departure
      t.integer :seats

      t.timestamps
    end
  end
end
