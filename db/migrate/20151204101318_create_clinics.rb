class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
