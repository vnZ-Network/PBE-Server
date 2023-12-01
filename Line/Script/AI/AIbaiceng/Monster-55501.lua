	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55501.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    	AI:SelfMurder()
    end
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("Warriors, I will embody Odin's Armor to help against the Erthas.", 1)
				AI:SetTimer(0,5000,1)
				AI:SetArray(1,1)
			end
	end