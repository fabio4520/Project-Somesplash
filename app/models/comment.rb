class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 10..500 }
  belongs_to :photo, counter_cache: nombre_random
end
