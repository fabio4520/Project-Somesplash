class Photo < ApplicationRecord
  validate :title, precense: true
  validate :subtitle, precense: true
  validate :category_id, length: {in: 20..500}, precense: true
  validate :comments_count, precense: true

  belongs_to :category
end
