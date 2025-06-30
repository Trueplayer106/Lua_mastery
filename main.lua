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

-- Print the current system date and time in two formats
local currentDate = os.date("%Y-%m-%d %H:%M:%S")
print("Current date/time (YYYY-MM-DD HH:MM:SS): " .. currentDate)

local currentDate2 = os.date("%d/%m/%Y %H:%M:%S")
print("Current date/time (DD/MM/YYYY HH:MM:SS): " .. currentDate2)