require 'minitest/autorun'

class ISBNTest < Minitest::Test
    def test_check_returns_boolean
        isbnValid = check_isbn("123")
        assert isbnValid != nil
    end

    def test_isbn_param_is_string
        assert_kind_of String, InputStr
    end
end

def check_isbn(str)
    return false
end

InputStr = ""