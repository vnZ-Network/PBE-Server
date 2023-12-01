	---------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/10/10
	--		Author£∫’≈Œƒ”Ó
	--		Class:	Monster-55362.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
     
    if nIndex == 0 then
    	x = AI:GetPosX()
    	y = AI:GetPosY()
    	AI:SummonMonsterByPos( 55363, x, y )
			AI:PlayAction("common\\story\\lightpillar\\fire\\tx_lightpillar_fire.ini",1,1)
    end
  end
  
  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Knight\\wudi\\keep\\tx_knight_wudi_keep.ini",1,1)
			AI:SetTimer(0,6000,20)
			AI:SetArray(1,1)
		end
	end