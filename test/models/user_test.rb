require 'test_helper'
require 'minitest/mock'

class UserTest < ActiveSupport::TestCase

  test "geocode" do
    user = users(:one)

    mock = Minitest::Mock.new
    mock.expect :geocode, [1, -1], [user.address]

    user.geocode(service: mock)

    assert_equal 1, user.latitude
    assert_equal -1, user.longitude

    assert_mock mock
  end
end
