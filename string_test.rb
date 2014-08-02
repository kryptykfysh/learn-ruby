require 'minitest/autorun'

class StringTest < Minitest::Unit::TestCase

  def test_expression_substitution
    assert_equal('Hello! Hello! Hello! ', "#{'Hello! ' * 3}")
  end

  def test_length
    s = 'Hello, World!'
    assert_equal(13, s.length)
  end
end
