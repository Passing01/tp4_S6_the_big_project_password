class Gossip < ApplicationRecord
  belongs_to :user,
  has_many :gossip_tags,
  has_many :tags, through: :gossip_tags
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  belongs_to :user
  has_many :likes
end
