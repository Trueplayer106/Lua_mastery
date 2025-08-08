function getStats()
    return 100, 20, 30
end

local damage, crit, cost = getStats()
print("Damage:", damage)     -- 100
print("Crit:", crit)         -- 20
print("Cost:", cost)         -- 30

function mastered(a,b)
    return a,b
end

local completed, failed = mastered(10,20)
print("completed:", completed)
print("failed:", failed)

function repeatTwice(Stabbed)
    Stabbed()
    Stabbed()
end

repeatTwice(function()
    print("Stabbed!")
end)

function Parrytwice(Parried)
    Parried()
    Parried()
end
Parrytwice(function()
    print("Parried!")
end)

function printAll(...)
    local args = {...}
    for i, value in ipairs(args) do
        print(value)
    end
end
printAll("Sword", "Shield", "Potion")

function PrintAll(...)
    local args = {...}
    for i,value in ipairs(args)do
        print(value)
    end
end
PrintAll("Ice spells", "Fire spells", "Water spells", "Earth spells")

-- Overwrite getStats with new values
function getStats()
    return 500, 200, 300
end

local damage2, crit2, cost2 = getStats()
print("Damage:", damage2)     -- 500
print("Crit:", crit2)         -- 200
print("Cost:", cost2)         -- 300

function  GetplayerRank()
    return "Silver100", "Gold100","Platinum100", "Diamond2000","Herioc250","Master400", "Grandmaster300"
end

local silver100, gold100, platinum150, diamond200, heroic250, master400, grandmaster300 = GetplayerRank()
print("Silver500:", silver100)     -- Silver100
print("Gold1000:", gold100)       -- Gold100
print("Platinum1000:", platinum150) -- Platinum100
print("Diamond2000:", diamond200)   -- Diamond2000
print("Heroic25:", heroic250)     -- Herioc250
print("Master4000:", master400)     -- Master400
print("Grandmaster30:", grandmaster300) -- Grandmaster300

function getPosition()
    return 10, 20
end

function playerInfo()
    local x, y = getPosition()
    return x, y, "Player1"
end

local px, py, name = playerInfo()
print(px, py, name)  -- 10  20  Player1

function createCharacter(args)
    print("Name:", args.name)
    print("Level:", args.level)
    print("Weapon:", args.weapon)
end

createCharacter({
    name = "Zoro",
    level = 10,
    weapon = "Katana"
})

createCharacter({
    name = "Luffy",
    level = 15,
    weapon = "Gum-Gum Pistol"
})

function attack(target, damage)
    print("You killed " .. target .. " for " .. damage .. " Dead")
end

attack("mide", 50)

function location(params)
    local x = params.x or 1
    local y = params.y or 1
    print("Location x:", x, "y:", y)
end

location({y = 10})  -- x will be 1, y is 10

function createCharacter2(Rank, level, Class)
    print("Mythyzones", Rank)
    print("Level:", level)
    print("DemonReaper:", Class)
end

createCharacter2("Mythizone", 20, "REPersa")
