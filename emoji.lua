local rand = Random.new()
local emoji = {'%&%69%64=%30%30%36%37','%5f%5f%5f%5f','%64%73%64%64%73%64%73','%32%32%64%73','%31%31%32%31%73','%68%65','%68%65%6c%6c%6f','%6d'}

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
