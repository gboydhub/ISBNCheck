require 'minitest/autorun'

def check_isbn(str)
    return false
end

class ISBNTest < Minitest::Test
    def test_check_returns_boolean
            isbnValid = check_isbn("123")
            assert isbnValid != nil
    end
end