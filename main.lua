-- Lua Gacha Roll Script: Simulates rolling for items of different rarities and prints the current date/time in two formats.

math.randomseed(os.time()) -- Seed the random number generator

-- Roll once and determine the item based on probability thresholds.
local roll = math.random()
if roll < 0.01 then                 -- 1% chance
    print("Rolled mythical item")
elseif roll < 0.06 then             -- 5% chance (cumulative: < 6%)
    print("Rolled legendary item")
elseif roll < 0.20 then             -- 14% chance (cumulative: < 20%)
    print("Rolled epic item")
elseif roll < 0.50 then             -- 30% chance (cumulative: < 50%)
    print("Rolled rare item")
else                                -- 50% chance
    print("Rolled common item")
end

-- print message 200 times instead of infinite loop Also, usign a for loop to print a message 200 times.
-- This is a simple for loop that iterates from 1 to 200 and prints a message.
for i = 1, 200 do
    print("This is a message number " )
end

---- using while loop
while true do
    print("This is an infinite loop")
    break  -- to prevent actual infinite loop in the tutorial
end

-- using_in a generic for loop to iterate through the numbers table
numbers = { 20, 10, 30, 40, 50, 65, 12, 11}

for _, v in ipairs(numbers) do
   print(v)
end

-- using i,v generic for loop to iterate through the numbers table
numbers = { 20, 10, 30, 40, 50, 65, 12, 11, 10 ,15, 25, 35, 45, 55, 60, 70, 80, 90, 100 }
for i, v in ipairs(numbers) do
   print(i, v)
end


-- get the start and end index
-- string.find() returns nil if string not found
startIndex, endIndex = string.find("Welcome to tutorialspoint", "to")

-- print start and end indexes    
print(startIndex, endIndex)   -->  7      9

-- unpack an array
a, b, c = table.unpack({10, 20, 30})

-- print all variables
print(a, b, c)  -->  10      20      30  	