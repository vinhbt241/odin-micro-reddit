class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :posts
  has_many :comments, through: :posts
end
