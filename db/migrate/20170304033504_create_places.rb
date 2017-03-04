class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
        t.string :name
        t.string :address_1
        t.string :address_2
        t.integer :postal_code_name
        t.integer :postal_code_suffix
        t.string :phone_number
        t.float :latitude
        t.float :longitude
        t.integer :radius
        t.float :distance_from_verve
        t.timestamps
    end
  end
end
