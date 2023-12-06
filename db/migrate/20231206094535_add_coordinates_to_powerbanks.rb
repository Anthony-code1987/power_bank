class AddCoordinatesToPowerbanks < ActiveRecord::Migration[7.1]
  def change
    add_column :powerbanks, :latitude, :float
    add_column :powerbanks, :longitude, :float
  end
end
