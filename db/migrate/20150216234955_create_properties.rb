class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :additional_info
      t.string :property_name
      t.string :property_type
      t.string :housing_type
      t.integer :minimum_nights
      t.integer :accomodates
      t.integer :number_of_beds
      t.integer :number_of_baths
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
