local rand = Random.new()
local emoji = {'%61','%62','%61','%6c%6f%6c','%6c','%25%37%31','%37','%36','%25%33%36','%79','%25%37%39','%66%61%67','%6e%69%67','%6e%69%67%67%65%72','%25%36%36'}
    
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
