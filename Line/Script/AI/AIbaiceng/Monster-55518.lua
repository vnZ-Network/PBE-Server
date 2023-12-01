	---------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/10/10
	--		Author：朱建臣
	--		Class:	Monster-55518.lua
	--		AIName：
	--		Remark：
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
     if nIndex == 0 then
     		--播放特效
     		AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
     end
     
     if nIndex == 1 then    		
     		AI:SummonMonsterByPos( 55501, 70, 69 )
     end
   end
   
  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
			AI:SetTimer(0,2000,1)
			AI:SetTimer(1,4000,1)
			AI:SetArray(4,1)
	end