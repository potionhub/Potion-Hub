local rand = Random.new()
local emoji = {'%30','%30','%36','%37','%37','%33','%30','%31','%35','%32','%36','%32','%&%69','%64','%64'}
    
function getRandomLetter()
    return emoji[rand:NextInteger(1,#emoji)]
end

function str(length, includeCapitals)
    local length = length or 10000
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
