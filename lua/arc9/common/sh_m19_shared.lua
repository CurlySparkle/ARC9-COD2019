if CLIENT then
    timer.Simple(1, function()
    
        local mw19settings = {
            TabName = "settings.mw19", sv = true,
			{ sv = true, type = "label", text = "settings.mw19.warzonestats"},
			{ sv = true, type = "bool", text = "settings.mw19.warzonestats.title", convar = "mw19_stats_warzone", desc = "settings.mw19.warzonestats.desc"},
        }
        
        table.insert(ARC9.SettingsTable, 30, mw19settings)
    
    end)
end
