require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  test "event page" do
    get "/events"
    assert_response :success
   end
end
