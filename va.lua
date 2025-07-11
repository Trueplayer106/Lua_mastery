--[
local g = 45
local name = "Gag"
local state = "Pain"

print(g)
print(name)
print(state)

local g, name, state = 45,"gag","pain"
print(g,name,state)




local person = {
    name = "Gag",
    age = 45,
    state = "Pain"
}

print(person.name)
print(person.age)
print(person.state)


local a = 10
local b = 20
local sum = a + b
print(sum)

-- Function to get health

function getHealth()
    return 100
end

local health = getHealth()
print(health)


-- Arthemetic operations
local a = 10
local b = 3

print(a + b)  --> 13
print(a - b)  --> 7
print(a * b)  --> 30
print(a / b)  --> 3.333...
print(a % b)  --> 1   (modulo: remainder)
print(a ^ b)  --> 1000 (exponent: 10^3)


local age = 13 -- or any appropriate value

if age >= 18 then
    print("Adult")
elseif age >= 13 then
    print("Teen")
else
    print("Child")
end



local greet = function(name)
    print("Hi, " .. name)
end

greet("Zoro")

local category = (age >= 18 and "Adult") or (age >= 13 and "Teen") or "Child"
print(category)


player = {}
player._index = player

Player = {} -- Define Player as a global table
Player.__index = Player

function Player:new(name, age)
    local obj = {name = name, age = age, health = 100}
    setmetatable(obj, Player)
    return obj
end
    
function Player:takeDamage(damage)
    self.health = self.health - damage
    if self.health < 0 then
        self.health = 0
    end
end

local p1 = Player:new("Luffy")
print("You are dead")
p1:takeDamage(30)
print(p1.health)

-- Basic input
print("Enter your name:")
local name = io.read()
print("Hello, " .. name)

-- Multiple inputs
local a, b = io.read("*n", "*n")  -- read two numbers
if a and b then
    print(a + b)
else
    print("Invalid input. Please enter two numbers.")
end

