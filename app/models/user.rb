class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # DO NOT REMOVE THIS COMMENT UNLESS YOU ARE READY TO FIX THE DB!!!
  # validates :first_name, presence: true
  mount_uploader :avatar, AvatarUploader
  has_many :animals, dependent: :destroy
  has_many :bookings, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
