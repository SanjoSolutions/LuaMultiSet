local function create(list)
    local multiSet = {}
    for _, value in ipairs(list) do
        if not multiSet[value] then
            multiSet[value] = 0
        end
        multiSet[value] = multiSet[value] + 1
    end
    return multiSet
end

local function equals(a, b)
    return Object2.equals(a, b)
end

MultiSet = {
    create = create,
    equals = equals
}
