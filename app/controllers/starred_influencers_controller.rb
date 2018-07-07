class StarredInfluencersController < ApplicationController
  def create
    @starred_influencer = StarredInfluencers.new(influencer_starred_params)
    @starred_influencer.influencer = @influencer
    @starred_influencer.save
  end

  def destroy
    @starred_influencer = StarredInfluencer.find[:id]
    @starred_influencer.destroy
    @starred_influencer.save
  end

  private

  def influencer_starred_params
    params.require(:starred_influencer).permit(:influencer_id)
  end

end
