class Comment < ApplicationRecord
  validates body:, presence:true, length: {in: 10..500}
end
