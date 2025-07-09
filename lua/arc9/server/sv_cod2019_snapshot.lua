util.AddNetworkString("ARC9_MW19_SONAR_EXPLODE")

ARC9_MW19_Snapshot = {}

function ARC9_MW19_Snapshot:FindAndSend(ply, origin, radius, duration)
    local tab = {}

    for _, v in ipairs(ents.FindInSphere(origin, radius)) do
        if v ~= ply and (v:IsNPC() or (v:IsPlayer() and v:Alive()) or v:IsNextBot()) then
            table.insert(tab, v)
            if v:IsPlayer() then
                v:ScreenFade(SCREENFADE.IN, Color(255, 0, 0, 5), 0.4, 0.1)
            end
        end
    end

    ARC9_MW19_Snapshot:Send(ply, tab, duration or 5)
end

function ARC9_MW19_Snapshot:Send(ply, tbl, duration)
    net.Start("ARC9_MW19_SONAR_EXPLODE")
        net.WriteFloat(duration or 5)
        net.WriteUInt(#tbl, 16)
        for _, v in ipairs(tbl) do
            net.WriteEntity(v)
        end
    net.Send(ply)
end