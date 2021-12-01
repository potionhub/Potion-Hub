local rand = Random.new()
local emoji = {'%6c','%73','%61%64','%61%61','%64','%61','%31','%32','%32','%31%30','%35','%73%73','%61','%70%70','%6b','%6b','%71','%78','%78%78','%7a%7a','%64%65'}

function getRandomLetter()
    return emoji[rand:NextInteger(1,#emoji)]
end

function str(length, includeCapitals)
    local length = length or 100
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
