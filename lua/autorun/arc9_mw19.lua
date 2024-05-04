AddCSLuaFile()

if (math.random(1, 100) == 1) then
   list.Set( "ContentCategoryIcons", "ARC9 - MW2019", "vgui/ahmad.png" )
   else
   list.Set( "ContentCategoryIcons", "ARC9 - MW2019", "vgui/mw_icon2.png" )
end

-- ConVar that allows the user to change between standard balansing of weapons and attachments and MW19/Warzone stats and balansing.
CreateConVar("arc9_mw19_stats_warzone", "0", FCVAR_ARCHIVE, "Set to 1 to enable Warzone stats on all ARC9 MW2019 weapons and attachments. Requires reload.", nil, nil)

ARC9MW19BaseInstalled = true