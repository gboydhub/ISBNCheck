def Check(str)
    str = str.tr('^0-9', '')
    if(str.length != 10 && str.length != 13)
        return false
    end

    if(str.length == 10)
        for i in (10).downto(0)
            puts str[i]
        end
    else
    end

    return true
end

if(ARGV.length <= 0)
    abort("Please input an ISBN.")
end

ISBN = ARGV[0]
puts "Checking ISBN: " + ISBN

if(!Check(ISBN))
    puts "ISBN is invalid"
else
    puts "Valid ISBN"
end