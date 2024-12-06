local anyall = require "anyall"

function all_positive(numbers)
    return anyall.all(numbers, function(k, v)
        return v > 0
    end)
end

local numbers = { }

for _, v in ipairs(arg) do
    -- coerce to number type
    numbers[#numbers+1] = v + 0
end

print(all_positive(numbers))
