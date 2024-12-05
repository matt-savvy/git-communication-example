--- @module reader
local reader = {}

function reader.read_all(filename)
    local file = assert(io.open(filename, "r"))
    return file:lines()
end

return reader
