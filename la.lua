-- First question 
-- Correct
local a = 10
local b = 5
print(a/b) 
print(a+b)
-- Correct way to assign values to multiple variables in Lua

--Creating a sytem that checks which number is positive or negative 
-- and print result of postive number
local a,b,c = 10,-11,0
if a > 0 then
    print("a is positive")
elseif c < 0 then
    print("c is negative")
else
    print("b is negative")
end

-- Using a for loop to print numbers from 1 to 5
for i = 1,5 do
    print(i)
    end
-- this just add anytwo numbers
local a  = 10
local b = 5
local c = 0
print(a+b)
print(a+c)
print(b+c)

-- This is a simple arithmetic operation in Lua

local a = 10
local b = 5
local c = 0

print("a + b =", a + b)
print("a * b =", a * b)

print("a + c =", a + c)
print("a * c =", a * c)

print("b + c =", b + c)
print("b * c =", b * c)

local a = 40
local b = 20
print("a + b =", a + b)
print("a * b =", a * b)