class Influencer < ApplicationRecord
  has_many :starred_influencers
  belongs_to :user
end
