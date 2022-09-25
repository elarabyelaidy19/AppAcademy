require "test_helper"

class ArtwoekSharesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get artwoek_shares_create_url
    assert_response :success
  end

  test "should get destroy" do
    get artwoek_shares_destroy_url
    assert_response :success
  end
end
