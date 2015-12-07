class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :qualification
      t.string :mobile
      t.string :email

      t.timestamps null: false
    end
  end
end
