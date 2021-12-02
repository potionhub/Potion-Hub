local rand = Random.new()
local arabic = {'ش','غغ','خخ','ف','مم','للل','حك','و','ن','و','أ','تت','سس','ي','بب','اا','ز','ص','عع','ج','مم','جج','ي','و','ر','ب'}

function getRandomLetter()
    return arabic[rand:NextInteger(1,#arabic)]
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
