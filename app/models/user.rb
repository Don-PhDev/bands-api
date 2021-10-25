class User < ApplicationRecord
  has_secure_password

  has_many :bands, dependent: :destroy
  has_many :members, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
