math.randomseed(os.time()) -- Seed the random number generator

if math.random() < 0.50 then  -- About 50% chance
    print("Hacked successfully!")
else
    print("Unsuccessful hack attempt.")
end
