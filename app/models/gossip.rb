class Gossip < ApplicationRecord
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :likes, as: :likeable
  belongs_to :user
end
