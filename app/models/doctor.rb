class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates_presence_of :name, :qualification, :mobile, :email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :schedules
  has_many :clinics, through: :schedules
  has_many :appointments
  has_many :patients, through: :appointments
end
