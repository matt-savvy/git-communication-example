local reader = require "reader"

function process(filename)
    local words = {}
    for line in reader.read_all(filename) do
        for word in string.gmatch(line, "%a+") do
            words[#words+1] = word
        end
    end
    words = dedupe(words)
    table.sort(words)

    for _, word in pairs(words) do
        print(word)
    end
end

function dedupe(t)
    local found = {}
    local results = {}
    for _, value in pairs(t) do
        if not found[value] then
            found[value] = true
            results[#results+1] = value
        end
    end

    return results
end

filename = arg[1]
process(filename)
