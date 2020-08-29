class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 4, maximum: 100 }
  validates :body, presence: true, length: { minimum: 4, maximum: 300 }
  validates :user_id, presence: true
end
