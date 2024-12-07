--- @module anyall
local anyall = {}

function anyall.any(t, fun)
    for k, v in pairs(t) do
        if fun(k, v) then
            return true
        end
    end
    return false
end

function anyall.all(t, fun)
    for k, v in pairs(t) do
        if not fun(k, v) then
            return false
        end
    end
    return true
end

return anyall
