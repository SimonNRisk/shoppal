require "application_system_test_case"

class AuctionItemsTest < ApplicationSystemTestCase
  setup do
    @auction_item = auction_items(:one)
  end

  test "visiting the index" do
    visit auction_items_url
    assert_selector "h1", text: "Auction items"
  end

  test "should create auction item" do
    visit auction_items_url
    click_on "New auction item"

    fill_in "Current bid", with: @auction_item.current_bid
    fill_in "Description", with: @auction_item.description
    fill_in "End time", with: @auction_item.end_time
    fill_in "Starting bid", with: @auction_item.starting_bid
    fill_in "Title", with: @auction_item.title
    click_on "Create Auction item"

    assert_text "Auction item was successfully created"
    click_on "Back"
  end

  test "should update Auction item" do
    visit auction_item_url(@auction_item)
    click_on "Edit this auction item", match: :first

    fill_in "Current bid", with: @auction_item.current_bid
    fill_in "Description", with: @auction_item.description
    fill_in "End time", with: @auction_item.end_time.to_s
    fill_in "Starting bid", with: @auction_item.starting_bid
    fill_in "Title", with: @auction_item.title
    click_on "Update Auction item"

    assert_text "Auction item was successfully updated"
    click_on "Back"
  end

  test "should destroy Auction item" do
    visit auction_item_url(@auction_item)
    click_on "Destroy this auction item", match: :first

    assert_text "Auction item was successfully destroyed"
  end
end
