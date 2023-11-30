require "test_helper"
Title = "Ruby on Rails Tutorial Sample App"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal Title, full_title
    assert_equal "Help | #{Title}", full_title("Help")
  end
end