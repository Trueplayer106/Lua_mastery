function xpProgress(currentLevel, currentXP)
    local xpRequired = currentLevel * 100
    local xpRemaining = math.max(0, xpRequired - currentXP)
    local percent = (currentXP / xpRequired) * 100

    return xpRemaining, percent
end

-- Example usage
local xpLeft, progress = xpProgress(5, 420)
print("XP left to level up: " .. xpLeft)
print("Progress: " .. math.floor(progress) .. "%")



function Playerkilled(Alive, Elimated)
    local aliveCount = Alive * 400
    local eliminatedCount = Elimated * 200
    local totalCount = aliveCount - eliminatedCount

    return eliminatedCount, totalCount
end

-- Example usage    
local alive, eliminated = Playerkilled(200, 100)
print("Alive players: " .. alive)
print("Eliminated players: " .. eliminated)