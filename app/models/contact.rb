class Contact < ApplicationRecord
  belongs_to :user
  validates :number, presence: true,
            uniqueness: { scope: [:country_code, :state_code] },
            numericality: { only_integer: true }

  enum device_type: [:mobile, :landline ]
  enum location_type: [:home, :work, :other]
end
