require File.expand_path '../../test_helper.rb', __FILE__

module CoreTest
  # Various tests on the {http://www.ruby-doc.org/core-2.1.2/String.html String} class.
  class StringTest < Minitest::Test

    # How interpolation with #{} works.
    def test_expression_substitution
      assert_equal('Hello! Hello! Hello! ', "#{'Hello! ' * 3}")
    end

    # {http://www.ruby-doc.org/core-2.1.2/String.html#method-i-length String#length} method
    def test_length
      s = 'Hello, World!'
      assert_equal(13, s.length)
    end

    # {http://www.ruby-doc.org/core-2.1.2/String.html#method-i-25 String#%} is a format operator.
    # See {http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-sprintf Kernel#sprinf} for formats.
    def test_modulo_formats_objects
      # %b Formats Fixnum to a binary string.
      assert_equal('110111', '%b' % 55)
      # Multiple substitutions can be performed on an array.
      assert_equal('ID   : 0000008e', '%-5s: %08x' % [ 'ID', 142 ]) 
    end

    # {http://www.ruby-doc.org/core-2.1.2/String.html#method-i-size String#size} and String#length are synonymous.
    def test_size_aliases_length
      s = 'Hello, World!'
      assert_equal(s.length, s.size)
    end

    # {http://www.ruby-doc.org/core-2.1.2/String.html#method-i-to_i String#to_i} can convert strings to Fixnums in different bases.
    def test_to_i_can_convert_bases
      str = '10'
      [2, 8, 10, 16].each do |i|
        assert_equal(i, str.to_i(i))
      end
    end
  end
end
