class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :cats
  has_many :owner_bookings, through: :cats, source: :bookings
  # va chercher dans le modele cats tous les bookings correspondants et créer la méthode correspondante owner_bookings
  has_one_attached :avatar
end
