class AddValidatedColumnsToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :validated, :boolean, default: false
  end
end
