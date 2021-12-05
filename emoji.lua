local rand = Random.new()
local emoji = {'😂😂','🤣🤣','😀','😃','😌','😎','🤓','🤓','🤓','😣','😣','😉','😍','🥰','😘','😙','😘','😚','😔','😕','🤬','🤬🤬🤬','🤯','😳😳','😳','🙂','😂😂'}

function getRandomLetter()
    return emoji[rand:NextInteger(1,#emoji)]
end

function str(length, includeCapitals)
    local length = length or 20
    local str = ''
    for i=1,length do
        local randomLetter = getRandomLetter()
        if includeCapitals and rand:NextNumber() > 1.5 then
            randomLetter = string.upper(randomLetter)
        end
        str = str .. randomLetter
    end
    return str
end
