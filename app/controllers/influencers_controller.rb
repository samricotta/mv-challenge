class InfluencersController < ApplicationController
  def index
    array = current_user.influencers.map(&:id)
    Influencer.where('id NOT IN ?', array)
    @starred_influencers = StarredInfluencer.all
  end
end


#undefined method influencers
#how to do current user on @starred_influencers = StarredInfluencer.all
