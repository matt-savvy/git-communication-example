local reader = require "reader"

function process(filename)
    local contents = reader.read_all(filename)
    local words = {}

    for word in string.gmatch(contents, "%a+") do
        words[#words+1] = word
    end

    table.sort(words)

    for _, word in pairs(words) do
        print(word)
    end
end

filename = arg[1]
process(filename)
