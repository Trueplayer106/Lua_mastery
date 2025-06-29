print("Hello, World!")

num = 0
while num < 10 do
    print("This will run forever " .. num)
    num = num + 1
end

-- Player EXP and Level System

local player = {
    exp = 0,
    exp_max = 1000000000, -- 1,000,000,000
    level = 0,
    level_max = 10000,
    exp_per_level = 1000
}

-- Function to add EXP
function add_exp(amount)
    player.exp = math.min(player.exp + amount, player.exp_max)
    player.level = math.min(math.floor(player.exp / player.exp_per_level), player.level_max)
end

-- Give player 100 EXP
add_exp(100)

-- Reset player to level 0 and exp 0
player.exp = 0
player.level = 0

-- Level up player from level 0 to 2800 and print each level gained
local target_level = 2800
local last_level = player.level

while player.level < target_level do
    add_exp(player.exp_per_level) -- Add enough EXP for one level
    if player.level > last_level then
        print("Player reached Level: " .. player.level .. " (EXP: " .. player.exp .. ")")
        last_level = player.level
    end
end

print("Final Player EXP: " .. player.exp)
print("Final Player Level: " .. player.level)
print("EXP Max: " .. player.exp_max)
print("Level Max: " .. player.level_max)