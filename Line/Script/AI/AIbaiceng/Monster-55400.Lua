	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/09
	--		Author:???
	--		Class:	Monster-55400.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 0 then				
				AI:AddSkill(2210,1)
				AI:UseSkill(2210,1)
			end
			
			if nIndex == 1 then
				z = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(z)
				local y1 = AI:GetPlayerY(z)
				AI:SummonMonsterByPos( 55401, x1, y1 )
			end
		end
			
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			--t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
			--if t == false then
					--	if a > 0 then
					--		if HP == HPMAX then
		    	--			AI:DelTimer(0)
		    	--			AI:DelTimer(1)
		    	--		end
		    	--	end
			--else
			
				if a == 0 then
						AI:ScreenText("The Acid Rain is burning our armor! We have to kill the monsters as soon as possible!",1)
						AI:SetTimer(0,20000,65535)		
						AI:SetTimer(1,30000,65535)		
						AI:SetArray(1,1)
				end
			--end
		end
				