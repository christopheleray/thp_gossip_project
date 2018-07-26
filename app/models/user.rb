class User < ApplicationRecord
  has_many :gossips
  has_many :likes
  belongs_to :city
  has_many :comments
end
