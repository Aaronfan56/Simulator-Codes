local player = game.Players.LocalPlayer

script.Parent.MouseButton1Click:Connect(function()
    local leadersats = player:WaitForChild("leaderstats")
    local Coins = leadersats:WaitForChild("Coins") -- You can chance the coins to your leaderstats

    Coins.Value = Coins.Value + 1
end)