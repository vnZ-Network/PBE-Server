	---------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/10/10
	--		Author£∫÷ÏΩ®≥º
	--		Class:	Monster-55404.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
                      
        if nIndex == 0 then
        	AI:SelfMurder()
        end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
		if a == 0 then
			AI:PlayAction("common\\luoshi\\tx_luoshi.ini" , 0, 1)
			AI:AddSkill(2216,1)
			AI:UseSkill(2216,1)
			AI:SetTimer(0,30000,1)
     	AI:SetArray(4,1)
    end    
	
	end