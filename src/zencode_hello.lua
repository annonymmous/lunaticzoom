Given("that my name is '' ''", function(firstname,surname)
    ACK.firstname = firstname
    ACK.surname = surname
end)

Given("that the result is", function(result)
    ACK.result = number --result
end)

Then("say hello", function()
    OUT = "Hello, " .. ACK.firstname .. ACK.surname .. "! The result is: " .. ACK.result .." Bitcon Script executed, successfully."
end)

Then("print all data", function()
    print(OUT)
end)
