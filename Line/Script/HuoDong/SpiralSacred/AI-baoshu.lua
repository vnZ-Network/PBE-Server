	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:������
	--		Class:	.Lua
	--		AIName:AI-baoshu.Lua
	--		Remark:�����Ǳ�����
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
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:DelTimer(0)
	
end