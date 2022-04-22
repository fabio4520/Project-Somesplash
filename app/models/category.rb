class Category < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :description, length: { in: 20..500 }, allow_blank: true
end
