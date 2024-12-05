--- @module reader
local reader = {}

function reader.read_all(filename)
    local file = assert(io.open(filename, "r"))
    local contents = file:read("*all")
    return contents
end

return reader
