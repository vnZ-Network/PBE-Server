	---------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/10/10
	--		Author£∫÷ÏΩ®≥º
	--		Class:	Monster-55409.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
     
     if nIndex == 0 then
     		AI:PlayAction("skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" , 0, 1)
     		AI:AddSkill(2221,1)
     		AI:UseSkill(2221,1)
     end
     
     if nIndex == 1 then
     		AI:SelfMurder()
     		AI:Exit()
     end
   end
     
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:PlayAction("skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" , 0, 1)
				AI:SetTimer(0,10000,65535)
				AI:SetTimer(1,40000,1)
				AI:SetArray(1,1)
			end
  end