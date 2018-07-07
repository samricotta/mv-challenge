require 'test_helper'

class InfluencerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get influencer_index_url
    assert_response :success
  end

  test "should get create" do
    get influencer_create_url
    assert_response :success
  end

  test "should get destroy" do
    get influencer_destroy_url
    assert_response :success
  end

end
