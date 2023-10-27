class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.string :flight_no
      t.references :departure_airport, null: false,
                                       foreign_key: { to_table: :airports }
      t.references :arrrival_airport, null: false,
                                      foreign_key: { to_table: :airports }
      t.datetime :departure_time
      t.datetime :duration

      t.timestamps
    end
  end
end
