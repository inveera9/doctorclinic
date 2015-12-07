class Doctor < ActiveRecord::Base
  has_many :schedules
  has_many :clinics, through: :schedules
  has_many :appointments
  has_many :patients, through: :appointments
end
