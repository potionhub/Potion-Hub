local rand = Random.new()
local emoji = {'شش','ضض','ذ','ق','ن','ي','ه','	أ','ل','غ','خ','ظ','ق','ع','ش','ي','ل','غ','ش','ذ','ا','ببب','ض','صص','ي','ي','عع'}

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