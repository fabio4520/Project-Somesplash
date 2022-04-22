class Photo < ApplicationRecord
  validates :title, presence: true
  validates :subtitle, presence: true, length: { in: 20..500 }
  validates :comments_count, presence: true

  belongs_to :category
end
