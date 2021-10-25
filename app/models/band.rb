class Band < ApplicationRecord
  belongs_to :user
  has_many :members, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
