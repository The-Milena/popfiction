class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :address
      t.integer :beds
      t.float :price
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
