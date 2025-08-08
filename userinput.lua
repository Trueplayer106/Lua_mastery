local name = "Hanif" -- Default name;

function askName(io)
    print("What is your name?")
    name = io.read()
    print("Welcome to the Lua Gacha Roll Script!  " .. name) 
end

 --print("Welcome to the Lua Gacha Roll Script! " ..name)

 askName(io)