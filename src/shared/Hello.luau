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

	-- tables
	local ourTable = {
		12,
		"Text",
		function()
			print("sup")
		end,
	}
	table.insert(ourTable, 20)
	table.insert(ourTable, "last item")
	ourTable[#ourTable] = nil -- delete the last item

	ourTable[3]()
	print(ourTable[4])
	print(#ourTable) -- prints 4

	ourTable["Unique Key"] = "New Item" -- the indexes 1 2 3 4 are called the key
	ourTable.UniqueKey = "New Item" -- create a new index called UniqueKey which has New Item
	print(ourTable["Unique Key"])

	-- loops
	-- for loops start from 1 end to 10, step count is 1
	for i = 1, 10, 1 do
		print("Loop! " .. i)
	end
	for i = -1, -10, -1 do
		print(i) -- -1 -2 -3 -4 .. -10
	end
	for i = 5, -5, -2 do
		print(i) -- 5 3 1 -1 .. -5
	end

	local ourTableLoop = {
		"String",
		7,
		false,
	}

	for i, item in ipairs(ourTableLoop) do
		print(item)
	end

	-- while loops
	local count = 1
	while count < 5 do -- condition is check at the START of each iteration
		print(count)
		count = count + 1
	end

	-- repeat loops
	local count1 = 1
	repeat -- condition is check at the END of each iteration
		print("Sup " .. count1)
		count1 = count1 + 1 -- 2 > 5 keep run, 3 > 5 run, 4 > 5, 5 > 5, 6 > 5 stop
	until count1 > 5 -- keep looping until its CORRECT

	-- recursion
	local function countdown(n)
		print(n) -- 8
		if n > 1 then
			countdown(n - 1) -- 7
		end
	end
	countdown(8)

	local data = { 1, 2, { 3, 4, { 5, 6 } }, 7 }
	local function printNumbers(value)
		if type(value) == "table" then -- can use typeof
			for i, item in ipairs(value) do
				printNumbers(item)
			end
		else
			print(value)
		end
	end
	printNumbers(data)
end

func()
