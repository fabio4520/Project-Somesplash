class Category < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :description, presence: true, length: { in: 20..500 }
  # Missing validates for cover.
end
