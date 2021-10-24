class User < ApplicationRecord
  has_many :bands, dependent: :destroy
  has_many :members, dependent: :destroy
end
