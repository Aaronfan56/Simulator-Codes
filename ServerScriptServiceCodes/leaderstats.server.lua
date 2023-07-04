local BadgeService = game:GetService("BadgeService")

--- Leaderstats Here ---
local function LeaderstatsLoader(player)
    local leaderstats = Instance.new("Folder", player)
    leaderstats.Name = "leaderstats"

    local Coins = Instance.new("IntValue", leaderstats)
    Coins.Name = "Coins"
end

--- Give The Player a Welcome Badge ---
local function Badge(player)
	local BadgeId = -- Your BageId here
	if not BadgeService:UserHasBadgeAsync(player.UserId, BadgeId) then
		BadgeService:AwardBadge(player.UserId, BadgeId)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
    LeaderstatsLoader(plr)
    Badge(plr)
end)