class User < ApplicationRecord
  has_many :posts, :comments, inverse_of: :user
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..16 }
  validates :username, presence: true, length: { in: 4..15 }, uniqueness: true
end
