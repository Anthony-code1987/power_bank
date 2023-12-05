class AddTitleToPowerbanks < ActiveRecord::Migration[7.1]
  def change
    add_column :powerbanks, :title, :string
  end
end
