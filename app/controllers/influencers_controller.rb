class InfluencersController < ApplicationController
  def index
    if user_signed_in?
      @suggestions = Influencer.where('id NOT IN (SELECT DISTINCT(influencer_id) FROM starred_influencers)')
      @influencers = current_user.influencers
    else
      @suggestions = Influencer.all
      @influencers = []
    end
  end
end
