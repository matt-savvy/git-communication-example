--- @module reader
local reader = {}

function reader.read_all(filename)
    local file = io.input(filename)
    local contents = io.read("*all")
    return contents
end

return reader
