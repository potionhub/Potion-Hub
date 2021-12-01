local rand = Random.new()
local emoji = {'%%26%69%64=%30%30%36%37%38%38%31%36%35%3','%6e%69%67%67%65%72','%66%61%67%67%6f%74','%6c%6f%6c','%66%75%63%6b%6f%66%66'}
    
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
