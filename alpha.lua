local reader = require "reader"

function process(filename)
    local words = {}
    for line in reader.read_all(filename) do
        for word in string.gmatch(line, "%a+") do
            words[#words+1] = word
        end
    end
    table.sort(words)

    for _, word in pairs(words) do
        print(word)
    end
end

filename = arg[1]
process(filename)
