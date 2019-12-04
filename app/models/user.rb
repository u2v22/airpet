class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # DO NOT REMOVE THIS COMMENT UNLESS YOU ARE READY TO FIX THE DB!!!
  # validates :first_name, presence: true
  has_many :animals
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
