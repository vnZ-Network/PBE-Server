----------------------------------------------------
--		Copyright£∫PERFECT WORLD
--		Modified£∫2012/08/09
--		Author£∫¿Ó“Ì∑…
--		Class: Lua
--		AIName£∫AI_juntuan.lua
--		Backup£∫¡˙µ€æ¸Õ≈µÙ¬‰
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

		posx = AI:GetPosX()
		posy = AI:GetPosY()
		AI:SummonMonsterByPos(11971,posx,posy)
		
	end	
	