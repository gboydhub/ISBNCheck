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

    total = 0
    for i in (12).downto(0)
        total += (((i%2)*2)+1) * str[i].to_i
    end
    if(total%10 > 0)
        return false
    end

    return true
end

if(ARGV.length == 0)
    abort("No ISBN given")
end

InputStr = ARGV[0]

if(check_isbn(InputStr))
    puts "Input is valid ISBN!"
else
    puts "Invalid ISBN"
end