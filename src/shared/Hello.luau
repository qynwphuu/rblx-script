local func = function()
	print("Hello, world!")

	print("Lua script learning")
	print("'local' is another way of 'private'")
	print("Lua has 8 Basic Data Types")
	print("Number, String, nil, Boolean, Table, Function, Threads, Userdata")

	-- numbers
	local addition = 5 + 2
	local subtraction = 5 - 2
	local multiplication = 5 * 2
	local division = 5 / 2
	local floordiv = math.floor(5 / 2) -- only ver 5.3 supports 5 // 3
	local modulusdiv = 5 % 2
	local exponentiation = 5 ^ 2
	local doublenegation = -(-5)

	print(addition)
	print(subtraction)
	print(multiplication)
	print(division)
	print(floordiv)
	print(modulusdiv)
	print(exponentiation)
	print(doublenegation)

	-- strings
	local myString = "Hello World!"
	local mySecondString = "12345"
	local myThirdString = "#¤%&/()"
	local concatenatedString = "Hello" .. "World!" -- prints HelloWorld!

	print(myString)
	print(mySecondString)
	print(myThirdString)
	print(concatenatedString)
	print(string.sub(myString, 1, 5)) -- prints Hello
end

func()
