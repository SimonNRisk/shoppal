require "test_helper"

class AuctionItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auction_items_index_url
    assert_response :success
  end

  test "should get show" do
    get auction_items_show_url
    assert_response :success
  end
end
