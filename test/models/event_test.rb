require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "test fail without title and event date" do
    event = Event.new
    assert_not event.save
  end
end
