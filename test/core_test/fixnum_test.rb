require 'minitest/autorun'

module CoreTest
  # Various tests on the {http://www.ruby-doc.org/core-2.1.2/Fixnum.html Fixnum} class.
  class FixnumTest < Minitest::Test
    # Binary numbers
    def test_0b_is_a_literal_binary_number
      assert_equal(87, 0b1010111)
    end

    # {http://www.ruby-doc.org/core-2.1.2/Fixnum.html#method-i-to_s Fixnum#to_s} allows numbers to change base when converting to strings.
    def test_to_s_accepts_a_base_as_anrgument
      {
        2   => '1010',
        8   => '12',
        10 => '10',
        16 => 'a',
        26 => 'a'
      }.each do |base, value|
        assert_equal(value, 10.to_s(base))
      end
    end

    # {http://www.ruby-doc.org/core-2.1.2/Fixnum.html#method-i-zero-3F Fixnum#zero?} means you don't always have to use '=='.
    def test_zero_replaces_0
      assert_equal(true, 0.zero?)
      assert_equal(false, 1.zero?)
    end
  end
end
