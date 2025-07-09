ARC9_MW19_Snapshot = {}
ARC9_MW19_Snapshot.EVENT_NAME = "ARC9_MW19_SONAR"

-- Taken from Sakarias88's Intelligent HUD
local function GetEntityAABB(ent)
    local mins = ent:OBBMins()
    local maxs = ent:OBBMaxs()

    local pos = {
        ent:LocalToWorld(Vector(maxs.x, maxs.y, maxs.z)):ToScreen(),
        ent:LocalToWorld(Vector(maxs.x, mins.y, maxs.z)):ToScreen(),
        ent:LocalToWorld(Vector(maxs.x, maxs.y, mins.z)):ToScreen(),
        ent:LocalToWorld(Vector(maxs.x, mins.y, mins.z)):ToScreen(),
        ent:LocalToWorld(Vector(mins.x, maxs.y, maxs.z)):ToScreen(),
        ent:LocalToWorld(Vector(mins.x, mins.y, maxs.z)):ToScreen(),
        ent:LocalToWorld(Vector(mins.x, maxs.y, mins.z)):ToScreen(),
        ent:LocalToWorld(Vector(mins.x, mins.y, mins.z)):ToScreen()
    }

    local minX = pos[1].x
    local minY = pos[1].y

    local maxX = pos[1].x
    local maxY = pos[1].y

    for k = 2, 8 do
        if pos[k].x > maxX then
            maxX = pos[k].x
        end

        if pos[k].y > maxY then
            maxY = pos[k].y
        end

        if pos[k].x < minX then
            minX = pos[k].x
        end

        if pos[k].y < minY then
            minY = pos[k].y
        end
    end

    return Vector(minX, minY), Vector(maxX, maxY)
end

net.Receive("ARC9_MW19_SONAR_EXPLODE", function(len, ply)
    local duration = net.ReadFloat()
    local count = net.ReadUInt(16)
    local tbl = {}
    for i = 1, count do
        local ent = net.ReadEntity()
        if IsValid(ent) then
            table.insert(tbl, ent)
        end
    end
    ARC9_MW19_Snapshot:Add(tbl, duration)
end)

function ARC9_MW19_Snapshot:Add(tbl, t)
    table.insert(self, {tbl, CurTime() + t, CurTime()})
    self:Enable()
end

local _ents = {}
local halo_color = Color(255, 0, 0)

function ARC9_MW19_Snapshot:Enable()
    local events = hook.GetTable()

    local tab = events["PreDrawHalos"]

    if tab and not tab[self.EVENT_NAME] or not tab then
        hook.Add("PreDrawHalos", self.EVENT_NAME, function()
            self:DrawHalo()
        end)
    end

    local tab = events["PostDrawTranslucentRenderables"]

    if tab and not tab[self.EVENT_NAME] or not tab then
        hook.Add("PostDrawTranslucentRenderables", self.EVENT_NAME, function()
            self:Draw()
        end)
    end
end

function ARC9_MW19_Snapshot:Disable()
    hook.Remove("PreDrawHalos", self.EVENT_NAME)
    hook.Remove("PostDrawTranslucentRenderables", self.EVENT_NAME)
end

local mat1 = Material("models/debug/debugwhite")
function ARC9_MW19_Snapshot:Draw(depth, skybox, skybox3d)
    if depth or skybox then return end

    local CT = CurTime()
    for i, tbl in ipairs(self) do

        local a
        if CT - tbl[3] <= 0.2 then
            a = Lerp((CT - tbl[3]) / 0.2, 0, 1)
        else
            a = Lerp((tbl[2] - CT) / 0.2, 0, 1)
        end

        for k, ent in ipairs(tbl[1]) do
            if not IsValid(ent) then self[k] = nil continue end
            render.ClearStencil()
            render.SetStencilEnable(true)

            render.SetStencilWriteMask(255)
            render.SetStencilTestMask(255)
            render.SetStencilReferenceValue(1)

            render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_ALWAYS)
            render.SetStencilFailOperation(STENCILOPERATION_KEEP)
            render.SetStencilPassOperation(STENCILOPERATION_REPLACE)
            render.SetStencilZFailOperation(STENCILOPERATION_REPLACE)

            ent:DrawModel()

            render.SetStencilCompareFunction(STENCILCOMPARISONFUNCTION_EQUAL)

            local mins, maxs = GetEntityAABB(ent)

            cam.Start2D()
                local health    = ent:Health()
                local maxHealth = ent:GetMaxHealth()

                local mul = math.Clamp(health / maxHealth, 1, 0)

                local dh = maxs.y - mins.y
                local x = mins.x
                local y = mins.y + dh * mul

                local w = maxs.x - x
                local h = maxs.y - y
                -- surface.SetDrawColor(255, 0, 0, 32)
                -- surface.DrawRect(x, y, w, h)

                surface.SetDrawColor(255, 0, 0, 32 * a)
                surface.DrawRect(x, y, w, h)
            cam.End2D()

            render.SetStencilEnable(false)
        end

        if #tbl[1] == 0 then
            table.remove(self, i)
        end
    end
end

function ARC9_MW19_Snapshot:DrawHalo()
    local CT = CurTime()

    for i, tbl in ipairs(self) do
        if tbl[2] < CT then
            table.remove(self, i)
            continue
        end
        for j = 1, #_ents do
            _ents[j] = nil
        end
        for _, ent in ipairs(tbl[1]) do
            if (not IsValid(ent) or ent:Health() <= 0) then
                table.remove(self, k)
            else
                table.insert(_ents, ent)
            end
        end
        if #tbl[1] == 0 then
            table.remove(self, i)
        end

        if CT - tbl[3] <= 0.2 then
            halo_color.a = Lerp((CT - tbl[3]) / 0.2, 0, 128)
        else
            halo_color.a = Lerp((tbl[2] - CT) / 0.2, 0, 128)
        end
        halo.Add(_ents, halo_color, 2, 2, 1, true, true )
    end

    if #self <= 0 then
        self:Disable()
    end
end

ARC9_MW19_Snapshot:Disable()