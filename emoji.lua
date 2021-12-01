local rand = Random.new()
local emoji = {'%66%61%67%21','%6e%69%67%67%65%72%21','%4c%45%4c','%73%74%6f%70','%72%65%74%61%72%64'}
    
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
