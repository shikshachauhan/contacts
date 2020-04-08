class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 2..12 }
  has_many :contacts, dependent: :destroy

end
