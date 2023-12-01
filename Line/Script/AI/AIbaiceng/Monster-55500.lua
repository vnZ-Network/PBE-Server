	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55500.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
    if nIndex == 1 then
    	AI:PlayAction( "specialidle" , 2000 ,0 )
    end    	

  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:PlayAction( "attack1" , 2000 ,0 )
				AI:SetTimer(1,4000,65535)
				AI:SetArray(1,1)
			end
	
		mapid = AI:GetMapID()
		Dead1 = AI:GetEctypeVarShort(mapid,3)
		Dead2 = AI:GetEctypeVarShort(mapid,4)
		if Dead1 == 1 and Dead2 == 1 then
			AI:ScreenText("Brave warriors, the Erthas have been repelled...for now. You may now ascend to the next level.",2)
			AI:Say("Brave warriors, the Erthas have been repelled...for now. You may now ascend to the next level.")
			AI:SelfMurder()
			AI:Exit()
		end
	
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		MapID = AI:GetMapID()
		nx = AI:GetPosX()
		ny = AI:GetPosY()
		AI:AddNpcByPos( 767, MapID, nx, ny, 1800000 )
	end
