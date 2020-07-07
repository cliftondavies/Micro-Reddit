class Post < ApplicationRecord
  belongs_to :user
  validates :url, presence: true
  validates_associated :user
  validates :user, presence: true
end
