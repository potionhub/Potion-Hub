local rand = Random.new()
local emoji = {'😂😂','🤣🤣','😀','😃','😌','😎','🤓','🤓','🤓','😣','😣','😉','😍','🥰','😘','😙','😘','😚','😔','😕','🤬','🤬🤬🤬','🤯','😳😳','😳','🙂','😂😂'}

function getRandomLetter()
    return emoji[rand:NextInteger(5,#emoji)]
end

function str(length, includeCapitals)
    local length = length or 13
    local str = ''
    for i=4,length do
        local randomLetter = getRandomLetter()
        if includeCapitals and rand:NextNumber() > .8 then
            randomLetter = string.upper(randomLetter)
        end
        str = str .. randomLetter
    end
    return str
end
