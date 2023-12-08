class AddLatitudeToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :latitude, :float
    add_column :reservations, :longitude, :float
  end
end
