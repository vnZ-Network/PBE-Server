	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:AI-molong.lua
	--		Remark:??????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--??
		AI:GetRandTarget()
		AI:AddSkill(2481, 1)
		AI:UseSkill(2481, 1)
		AI:Say("Dragon Roar!")
	end
	
	if nIndex == 1 then
		--??
		AI:AddSkill(2482, 1)
		AI:UseSkill(2482, 1)
		AI:Say("Dragon Might!")
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:SetTimer(0,3000,65535)
		AI:SetTimer(1,3000,65535)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		
	AI:Say("Ah!! My treasures!")
	AI:ScreenText("Ah!! My treasures!", 1)
	
	AI:SummonMonster(32353, 3)
	AI:SummonMonster(32354, 1)
	mapid = AI:GetMapID()
	AI:SetEctypeVarShort(mapid,94, 1)
	
	AI:DelTimer(0)
	AI:DelTimer(1)
	
end