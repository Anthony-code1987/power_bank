class CreatePowerbanks < ActiveRecord::Migration[7.1]
  def change
    create_table :powerbanks do |t|
      t.string :adress
      t.string :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
