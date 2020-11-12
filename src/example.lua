local zencode = require('zencode')

Given("that my name is ''", function(name)
    ACK.name = name
end)

Given("that my home country is ''", function(country)
    ACK.country = country
end)

Then("say hello", function()
    OUT = "Hello, this is " .. ACK.name .. " from " .. ACK.country .. "!"
end)

Then("print all data", function()
    print(OUT)
end)


zencode:begin(1)

local script = [[
Given that my name is 'Tom'
Given that my home country is 'Austria'
Then say hello
And print all data
]]

zencode:parse(script)
zencode:run({}, {})

-- print("\n---\n")
-- print(ZEN_traceback)
