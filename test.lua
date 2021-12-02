local rand = Random.new()
local emoji = {'%61','%62','%63','%64','%65','%66','%67','%68','%69','%6a','%6b','%6c','%6d','%6e','%6f','%70','%71','%72','%73','%74','%75','%76','%77','%78','%79','%7a','00'}

function getRandomLetter()
    return emoji[rand:NextInteger(1,#emoji)]
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
