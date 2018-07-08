class AddUserToStarredInfluencers < ActiveRecord::Migration[5.2]
  def change
    add_reference :starred_influencers, :user, foreign_key: true
  end
end
