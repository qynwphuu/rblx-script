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
	local floordiv = math.floor(5 / 2) -- only ver 5.3 supports 5 // 2
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

	-- nil, represents an absence of a value
	local variable = nil
	-- or local variable
	print(variable) -- prints nil

	-- boolean
	local boolVariableTrue = true
	local boolVariableFalse = false
	local boolCheck = 5 > 3 -- can use == => >= < > to compare numbers and strings
	local boolCheckNotEqual = 7 ~= 8 -- not equal, ~= == can compare all data types
	-- local strVarCheck = ("hi" ~= "sup")
	-- local funcCheck = function() end ~= function() end

	print(boolVariableTrue)
	print(boolVariableFalse)
	print(boolCheck)
	print(boolCheckNotEqual)
	print(not true) -- prints false
	print(not false) -- prints true

	-- if statements
	if 9 > 7 then
		print("this is true")
	else
		print("this is false")
	end

	if 2 > 1 and 3 > 2 then -- same as AND in SQL
		print("that's true") -- will print if BOTH are true
	end

	-- function
	local function functionName()
		print("you're here")
		local value1, value2 = 10, 15

		return value1, value2 -- stops here
	end

	local num1, num2 = functionName() -- asign 10, 15 to num1, num2
	print(num1)
	print(num2)
end

func()
