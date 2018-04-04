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

    def test_proper_stripped_format
        assert check_isbn("0-7167-0344-0") == true
    end

    def test_if_isbn_ten_valid
        assert check_isbn("0-7167-0344-0") == true
        assert check_isbn("0-1000-0000-0") == false
    end

    def test_if_isbn_thirteen_valid
        assert check_isbn("978-0-7167-0344-0") == true
        assert check_isbn("913-3-7167-0344-0") == false
    end
end

def check_isbn(str)
    str = str.tr('^0-9', '')
    if(str.length != 10 && str.length != 13)
        return false
    end

    if(str.length == 10)
        total = 0
        for i in (9).downto(0)
            total += str[i].to_i * (i+1)
        end
        
        if(total%11 > 0)
            return false
        end

        return true
    end

    return true
end

InputStr = ""
if(ARGV.length == 0)
    abort("No ISBN given")
end

InputStr = ARGV[0]