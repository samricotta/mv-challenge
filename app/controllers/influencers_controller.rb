class InfluencersController < ApplicationController
   helper_method :sort_column, :sort_direction

  def index
    if user_signed_in?
      @suggestions = Influencer.where('id NOT IN (SELECT DISTINCT(influencer_id) FROM starred_influencers)')
      # @influencers = current_user.influencers.order(params[:sort])
      @influencers = current_user.influencers.order(sort_column + " " + sort_direction)
    else
      @suggestions = Influencer.all
      @influencers = []
    end
  end

  private

   def sort_column
    Influencer.column_names.include?(params[:sort]) ? params[:sort] : "statistics_engagement"
  end

   def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
