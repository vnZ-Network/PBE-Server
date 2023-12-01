	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:AI-texiao.lua
	--		Remark:螺旋特效怪
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:SelfMurder()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	if a == 0 then
		AI:SetTimer(0,3000,1)
		AI:SetArray(0,1)
		AI:PlayAction("skill\\Common\\common_debuff\\keep\\tx_common_debuff_keep_70zhuxianrenwu.ini", 1, 1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:DelTimer(0)
	
end