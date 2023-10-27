class ChangeDurationToInt < ActiveRecord::Migration[7.1]
  def change
    remove_column :flights, :duration
    add_column :flights, :duration, :integer
  end
end
