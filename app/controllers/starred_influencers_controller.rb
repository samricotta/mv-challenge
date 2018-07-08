class StarredInfluencersController < ApplicationController
  def create
    @influencer = Influencer.find(params[:influencer_id])
    @starred_influencer = StarredInfluencer.new
    @starred_influencer.influencer = @influencer
    @starred_influencer.user = current_user
    @starred_influencer.save
    redirect_to root_path
  end

  def destroy
    @starred_influencer = StarredInfluencer.find(params[:id])
    @starred_influencer.destroy
    redirect_to root_path
  end

  private

  def influencer_starred_params
    params.require(:starred_influencer).permit(:influencer_id)
  end

end
