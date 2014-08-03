require File.expand_path '../../test_helper.rb', __FILE__

module CoreTest
  # Various tests on the {http://www.ruby-doc.org/core-2.1.2/Numeric.html Numeric} class.
  class NumericTest < MiniTest::Test
    # {http://www.ruby-doc.org/core-2.1.2/Numeric.html#method-i-nonzero-3F Numeric#nonzero?} Returns self if object is not zero, nil otherwise.
    # Compare with {CoreTest::FixnumTest#test_zero_replaces_0 Fixnum.zero?}
    def test_nonzero
      assert_equal(nil, 0.0.nonzero?)
      assert_equal(3.6, 3.6.nonzero?)
    end
  end
end
