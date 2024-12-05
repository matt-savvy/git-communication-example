function process(filename)
    local words = {}
    local file = io.input(filename)
    local contents = io.read("*all")

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
