	---------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2011/10/10
	--		Author���콨��
	--		Class:	Monster-55405.lua
	--		AIName��
	--		Remark��
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
     
     if nIndex == 0 then
     	AI:PlayAction("skill\\Monster\\boss\\huoshan\\fire\\tx_huoshan_fire.ini" , 0, 1)
			AI:AddSkill(2217,1)
			AI:AddSkill(2217,2)
     end
     
  end
  
  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
		if a == 0 then
			AI:PlayAction("skill\\Monster\\boss\\huoshan\\fire\\tx_huoshan_fire.ini" , 0, 1)
			AI:AddSkill(2217,1)
			AI:UseSkill(2217,1)
			AI:SetTimer(0,6000,1)
     	AI:SetArray(4,1)
    end    
	
	end