class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, inverse_of: :post
  validates :url, presence: true
  validates_associated :user
  validates :user, presence: true
end
