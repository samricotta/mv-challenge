class InfluencerController < ApplicationController
  def index
   @influencer = Influencer.all
  end

  def create
  end

  def destroy
  end
end
