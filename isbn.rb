require 'minitest/autorun'

class ISBNTest < Minitest::Test
    def test_check_returns_boolean
            isbnValid = check_isbn("123")
            assert isbnValid != nil
    end
end