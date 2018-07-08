class StarredInfluencersController < ApplicationController
  def create
    @influencer = Influencer.find(params[:influencer_id])
    @starred_influencer = StarredInfluencer.new
    @starred_influencer.influencer = @influencer
    @starred_influencer.save
  end

  def destroy
    @starred_influencer = StarredInfluencer.find[:id]
    @starred_influencer.destroy
  end

  private

  def influencer_starred_params
    params.require(:starred_influencer).permit(:influencer_id)
  end

end
