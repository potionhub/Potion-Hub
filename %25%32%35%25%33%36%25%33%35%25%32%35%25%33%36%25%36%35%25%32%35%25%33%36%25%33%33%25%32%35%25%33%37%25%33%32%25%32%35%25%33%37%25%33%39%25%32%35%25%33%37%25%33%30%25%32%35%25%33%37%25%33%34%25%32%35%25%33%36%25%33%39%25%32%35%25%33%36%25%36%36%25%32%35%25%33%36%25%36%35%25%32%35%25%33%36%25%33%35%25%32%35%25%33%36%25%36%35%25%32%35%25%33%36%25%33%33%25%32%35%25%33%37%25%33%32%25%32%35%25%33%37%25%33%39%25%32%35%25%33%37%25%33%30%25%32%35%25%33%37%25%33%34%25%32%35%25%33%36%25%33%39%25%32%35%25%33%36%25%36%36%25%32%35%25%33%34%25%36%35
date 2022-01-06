local rand = Random.new()
local base = {'bWFuIGkgbG92ZSB0aWdodCBwdXNzaWVzIHNvIG11Y2g','bmlnZ2FzIGdheSBhcyBmdWNr','aSBmdyB0aGVtIGFzaWFuIGJpdGNoZXMg8J-YjQ','aWQgbHVoIG1lIHNvbWUgYmxhY2sgZ2lybHMgcm4gbmds','d2UgYWxtb3N0IHRoZXJl','bm9vbyBub3QgdGhlIHBlcmMgMzA','b2ggc2hpdCBpIGZvcmdvdCB0aGUgcGVyYyAzMA','ZWwgZXNwYW5vbA','YmIgaW4gbXkgY2xpcSBteSBjbGlx','c2x1cnJycnJycnJycnJycg','YmJwdXRpbg','c3BlZCBkYXRyIHNoaXQgdXA','c2hhd3R5IGFscmR5IGtubw','Z290IGRhdCB3aGl0ZSBzbm8gdXAgbXkgbm96ZQ','aWYgdSBmdWtrbiB3IG1lIHUgY250IGh2IG1l','PT09PT09PT09PT09PT09PT09PT09PQ','I0pFV0VMWFhFVA','InN1bTEgbGV0IG1lIGZ1a2sgcGxzIGltIHNvIGRlc3BlcmF0ZSIgLSB4OWVk','aW0gdHJ5bmEgbnV0IG9uIHN1bSBnaXJsIGZhY2Ugcm4','MTAgaG9sZXMgaW4gdXIgYnJhaW4gY3V6IGlkZ2Fm','aW0gZ29uZSBzaG9vdCBzaGl0IHVw','cnVuIHVwIGluIHlvIGNyaWI','amV3ZWxzZXQgdXAgbnh0','b2ggbmFhYWFhaCBzaG9yZHkgbGlzdG4gMiBwbGF5Ym9pIGNhcnRpIPCfmK3wn5it8J-YrQ','cHVzc3kgYXNzIG5pZ2dheiBkb250IHduYSBzdGVwIDIgbWU','MTAgaG9sZXMgaW4geW8gYnJhaW4','cGxheSBnYW1leiB3IGhyIGhydCBsaWtlIGl0IHdhcyBhIHBzMg','c3BlZWRuIGluIGRpcyA2IHNoaXQ','aSBkb250IGZlZWwgc2h5dA','d25hIGx1aHYgaGVy','cGxheWJvaSBjYXJ0aSBpcyBzbyBhc3MgYnJ1IGhvdyB1IG5pZ2dzIGxpc3RlbiAyIGRhdCBzaGl0'}

function getRandomLetter()
    return base[rand:NextInteger(1,#base)]
end

function str(length, includeCapitals)
    local length = length or 10
    local str = ''
        for i=9,length do
        local randomLetter = getRandomLetter()
        if includeCapitals and rand:NextNumber() > .90 then
            randomLetter = string.upper(randomLetter)
        end
        str = str .. randomLetter
    end
    return str
end
