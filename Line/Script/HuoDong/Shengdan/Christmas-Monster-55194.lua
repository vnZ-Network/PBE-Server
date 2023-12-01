	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/12/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Christmas-Monster-55194.lua
	--		Remark:????,??
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:AddSkill(9823,1)
			AI:UseSkill(9823,1)
		end
	end



	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
		if t == false then
			AI:DelTimer(0)
		else
			HP = AI:GetHP()
			HPMAX = AI:GetHPMax() 
			a = AI:GetArray(1)
			if a == 0 then
				if HP < HPMAX then
					AI:Say("Merry Christmas! I have your gift.")
					AI:SetTimer( 0 ,10000,65535)
					AI:SetArray( 1, 1 )
				end
			end
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	  
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	   
	end
	
	
	
	