local age;
function decideAgeGroup(io)
    print("Please enter your age:")
    age = io.read("*n") -- Read a number from input
    if age < 13 then
        print("You are a child.")
    elseif age < 20 then
        print("You are a teenager.")
    else
        print("You are an adult.")  
    end 
end

decideAgeGroup(io)