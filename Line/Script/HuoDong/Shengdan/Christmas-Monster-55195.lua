	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2009/12/07
	--		Author£ºË¾ÎÄ²©
	--		Class:	.Lua
	--		AIName£ºChristmas-Monster-55195.lua
	--		Remark£ºÑÌ»¨
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:PlayEffect("common\\Yanhua\\tx_ptyanhua\\tx_hhyanhua_02.ini")
		end
		if nIndex == 1 then
			AI:PlayEffect("common\\daxue\\tx_daxue.ini")
		end
	end



	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer( 0 ,10000,65535)
			AI:SetTimer( 1 ,30000,65535)
			AI:SetArray( 1, 1 )
		end
	end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	  
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	   
	end
	
	
	
	
	