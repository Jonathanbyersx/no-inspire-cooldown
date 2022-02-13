--remove inspire aced cooldown
local PlayerManager_has_enabled_cooldown_upgrade_original = PlayerManager.has_enabled_cooldown_upgrade
function PlayerManager:has_enabled_cooldown_upgrade(category, upgrade, ...)
	if category == "cooldown" and upgrade == "long_dis_revive" then return true end
	return PlayerManager_has_enabled_cooldown_upgrade_original (self, category, upgrade, ...)
end