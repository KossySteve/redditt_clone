class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :title, presence: true, length: { minimum: 4, maximum: 100 }
  validates :body, presence: true,length: { minimum: 4, maximum: 300 }
end
