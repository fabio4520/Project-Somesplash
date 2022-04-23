class Category < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { in: 20..500 }

  has_many :photos, dependent: :nullify
  has_one_attached :avatar
end
