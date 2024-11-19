class RemovePictureFromPlaces < ActiveRecord::Migration[7.1]
  def change
    remove_column :places, :picture, :string
  end
end
