class InfluencersController < ApplicationController
  def index
    influencers = Influencer.all
    user_influencers = current_user.influencers.map(&:id)
    Influencer.where('id NOT IN ?', user_influencers)
    @starred_influencers = current_user.influencers
  end
end


#undefined method influencers
#how to do current user on @starred_influencers = StarredInfluencer.all
