class AddColumToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :title, :string
    add_column :reservations, :adress, :string
  end
end
