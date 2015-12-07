class Clinic < ActiveRecord::Base
  validates_presence_of :name, :address, :city, :state, :country, :zipcode
  has_many :schedules
  has_many :doctors, through: :schedules
end
