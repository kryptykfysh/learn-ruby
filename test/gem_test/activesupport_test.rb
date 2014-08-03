require 'minitest/autorun'
require 'active_support'
require 'active_support/core_ext'

module GemTest
  # Various tests on the ActiveSupport gem, specifically {http://apidock.com/rails/v2.3.8/ActiveSupport/CoreExtensions Core Extensions}.
  class ActiveSupportCoreExtTest < MiniTest::Test
    # Get a random date using a range.
    def test_random_birth_date_with_age_between_20_and_30
      birthday = rand(30.years.ago..20.years.ago).to_date
      assert_includes((30.years.ago.to_date..20.years.ago.to_date), birthday)
    end
  end
end
