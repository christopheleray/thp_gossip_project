class Comment < ApplicationRecord
  belongs_to :gossip
  has_many :likes, as: :likeable
  belongs_to :user
end
