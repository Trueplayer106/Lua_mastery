-- This is a Lua script that demonstrates variable assignment and printing
local myvariable = 100
print(myvariable)
print(myvariable)
print(myvariable)
print(myvariable)


local function printABC()
    print ("A")
    print ("B")
    print ("C")
end

printABC()
printABC()
printABC()
 



function ask()
    io.write("What is your UserID")
    local name =  io.read()
    print("Verified identity, " .. name)
end

ask()



local function addition()

end

addition()








local function Access(Files,incontrol)
    local power = Files + incontrol
     print(power)
     print("Access Granted ")
     print("Welcome tier5 Commander")
end

Access(19,0)



function getplayerdata()
    return "herioc","DemonSlayer",250
end

local rank , class , level = getplayerdata()
print (rank, class, level)





function Combatsoulrank()
       return "Legndary","Oni level", "Nictar"
end

local rank,levl,traits = Combatsoulrank()
print(rank,level,traits)







-- IF statemnt

local function addition(number1,number2)
    local result = number1 + number2

    if result ==4 then 
        print("the result is equal to 4")
    elseif result == 6 then
        print("the result is equals to 6")
    else
        print("None of these results add up")
    end
end

addition(2,2)
addition(3,3)
addition(4,2)
addition(10,10)




local number = math.random(1,1000)
print( number)

local myarray = {10,"string" , true, 500} 
print(myarray[4])

for  index = 1, #myarray do
     print(myarray[index])
end

local myarray = {10,20,30}

for i = 1, #myarray do
    print(myarray[i])
end

table.insert(myarray, 40)

for i = 1, #myarray do
    print(myarray[i])
end

 



local player = {
    level = 1,
    kills = 0
}

local function statusLoop()
    while true do
       print("Level:", player.level)
       print("Kills:", player.kills)
       print("---------")
       os.execute("sleep 2")
       coroutine.yield( )
    end
end

local function gameLogic()
    while true do
        player.kills = player.kills + 1
        if player.kills % 5 == 0 then
            player.level = player.level + 1
        end
        os.execute("sleep 1")
        coroutine.yield()
    end
end

local statusCoroutine = coroutine.create(statusLoop)
local logicCoroutine = coroutine.create(gameLogic)

while true do
    coroutine.resume(statusCoroutine)
    coroutine.resume(logicCoroutine)
    os.execute("sleep 1")
end




coroutine.wrap(function()
    print("coroutine task")
end)()



Queue = {}


file = io.open("example.txt","r")


io.input(file)

local line = io.read()

local pos = 1

local s,e = string.find(line,"%w+",pos)

print(string.sub(line, s, e))

io.close(file)

function allwords ()
   -- read the current line
   local line = io.read()  -- current line

   -- current position in the line
   local pos = 1

   -- iterator function
   return function ()

      -- repeat until there are lines
      while line do

         -- find the next word
         local s, e = string.find(line, "%w+", pos)
         -- if word is found
         if s then
            -- set the next position after current word
            pos = e + 1
            -- return the word
            return string.sub(line, s, e)
         else
            -- if word is not present, read next line
            line = io.read()
            -- reset the position to 1
            pos = 1
         end
      end
      -- if no more line, terminate the traversal
      return nil
   end
end
for word in allwords() do
   print(word)
end