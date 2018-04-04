require 'minitest/autorun'

class ISBNTest < Minitest::Test
    def test_check_returns_boolean
        isbnValid = check_isbn("123")
        assert isbnValid != nil
    end

    def test_isbn_param_is_string
        assert_kind_of String, InputStr
    end

    def test_for_argv
        refute_equal ARGV.length, 0
    end

    def test_inputstr_length
        refute_equal InputStr.length, 0
    end

    def test_input_stripped_size_10
        assert_equal InputStr.length, 10
    end
end

def check_isbn(str)
    return false
end

InputStr = ""
if(ARGV.length == 0)
    abort("No ISBN given")
end

InputStr = ARGV[0]