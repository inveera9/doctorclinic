class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.datetime :time
      t.integer :clinic_id
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end
