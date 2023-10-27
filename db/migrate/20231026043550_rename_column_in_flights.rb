class RenameColumnInFlights < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :arrrival_airport_id, :arrival_airport_id
  end
end
