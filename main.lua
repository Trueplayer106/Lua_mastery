-- This script gives a random chance of rolling a common up to a mythical item, and prints the current date and time in two formats.
math.randomseed(os.time()) -- Seed the random number generator

if math.random() < 0.7 then  -- About 0.7% chance
    print("Wrolled mythical item")
elseif math.random() < 0.4 then
    print("Wrolled epic item")
elseif math.random() < 0.2 then
    print("Wrolled rolled rare ")
elseif math.random() < 0.4 then
    print("Wrolled Uncommon ")
else
    print("Wrolled legendary ")
end

   -- get the system current date and time
local currentDate = os.date("%Y-%m-%d %H:%M:%S")
print(currentDate)
-- get the system current date and time in a different format
local currentDate2 = os.date("%d/%m/%Y %H:%M:%S")
print(currentDate2)