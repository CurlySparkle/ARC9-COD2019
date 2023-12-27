local ATT = {}

ATT = {}

ATT.PrintName = "Retract Stock"
ATT.CompactName = "Retract"
ATT.Description = [[Retracts the stock, provides faster handling at the cost of more recoil.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/go_stock_none.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_m32_stock_opt"}
ATT.ActivateElements = {"stock_retracted"}

ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.RecoilMult = 1.15
ATT.RecoilKickMult = 1.15

ARC9.LoadAttachment(ATT, "cod2019_m32_stock_retract")