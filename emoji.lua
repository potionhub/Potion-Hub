local rand = Random.new()
local ahash = {'%66%61%67','%31%32','%61%64','%61%61','%31%35%33','%31%32%31%34%31','%31%31%31%31','%31%32%31','%6c%65%6c%65','%31%30','%35','%73%73','%61','%70%70','%6b','%6b','%71','%31%35%33','%78%78','%7a%7a','%64%65'}

function getRandomLetter()
    return ahash[rand:NextInteger(1,#ahash)]
end

function str(length, includeCapitals)
    local length = length or 10
    local str = ''
    for i=1,length do
        local randomLetter = getRandomLetter()
        if includeCapitals and rand:NextNumber() > .5 then
            randomLetter = string.upper(randomLetter)
        end
        str = str .. randomLetter
    end
    return str
end
