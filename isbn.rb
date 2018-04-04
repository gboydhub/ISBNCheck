def Check(str)
    if(str.length != 13 && str.length != 17)
        return false
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