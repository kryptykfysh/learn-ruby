require File.expand_path '../../test_helper.rb', __FILE__

module StandardLibTest
  include Rack::Test::Methods
  # {http://ruby-doc.org/stdlib-2.1.2/libdoc/minitest/rdoc/MiniTest/Assertions.html MiniTest::Assertions} and how to use them.
  describe MiniTest::Assertions do
    # {http://ruby-doc.org/stdlib-2.1.2/libdoc/minitest/rdoc/MiniTest/Assertions.html#method-i-assert assert} fails unless the test is a true value.
    it 'uses :assert to test for truth' do
      assert(true == true, 'True is indeed true. Who knew?')
    end
  
    # {http://ruby-doc.org/stdlib-2.1.2/libdoc/minitest/rdoc/MiniTest/Assertions.html#method-i-assert_empty assert empty} checks a collection has no content
    it 'uses :assert_empty to test a collection for content' do
      assert_empty([], 'Yep, it\'s empty')
    end

    # {http://ruby-doc.org/stdlib-2.1.2/libdoc/minitest/rdoc/MiniTest/Assertions.html#method-i-assert_equal assert_equal} tests two values to see if they are equal.
    it 'uses :assert_equal to test equality' do
      expected = 4
      actual = 2 + 2
      assert_equal(expected, actual, 'They match!')
    end
  end
end
