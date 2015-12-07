class Clinic < ActiveRecord::Base
  has_many :schedules
  has_many :doctors, through: :schedules
end
