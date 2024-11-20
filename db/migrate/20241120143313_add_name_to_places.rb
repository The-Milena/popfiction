class AddNameToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :places, :name, :string
  end
end
