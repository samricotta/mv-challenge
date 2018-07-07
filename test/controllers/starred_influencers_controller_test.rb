require 'test_helper'

class StarredInfluencersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get starred_influencers_index_url
    assert_response :success
  end

  test "should get create" do
    get starred_influencers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get starred_influencers_destroy_url
    assert_response :success
  end

end
