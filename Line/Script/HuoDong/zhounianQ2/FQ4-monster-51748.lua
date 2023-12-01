----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2010/11/11
--		Author：胡斌涛
--		Class:	.Lua
--		AIName：monster-51242.lua
--		Remark：精英怪
----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		playerID = AI:GetEctypeVarInteger(mapid, 110)
		
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
			end
		end
		
		if nIndex == 2 then
			--放技能
			AI:AddSkill(2106, 1)
			AI:UseSkill(2106, 1)
			AI:SetTimer(3,1500,1)
		end		
		
		if nIndex == 3 then
			AI:Exit()
		end		
		
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,2500,1)
			AI:SetArray(1,1)
		end
		
		a = AI:GetArray(2)
		if a == 0 then
			AI:SetTimer(2,2500,99)
			AI:SetArray(2,1)
		end
		
	end
	

	
