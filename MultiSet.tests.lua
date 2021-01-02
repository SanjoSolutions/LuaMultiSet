require('Testing/Array/Array')
require('Testing/Testing')
require('Object/Set/Set')
require('Object/Object')
require('MultiSet')

local expect = Testing.expect

function testCreate()
    local multiSet = MultiSet.create({'a', 'a', 'b'})
    return expect(multiSet).toEqual({a = 2, b = 1})
end

function testEquals()
    local multiSetA = MultiSet.create({'a', 'a', 'b'})
    local multiSetB = MultiSet.create({'a', 'a', 'b'})
    return expect(MultiSet.equals(multiSetA, multiSetB)).toEqual(true)
end

print(testCreate())
print(testEquals())
