----------------------------------------------------
--		Copyright£ºPERFECT WORLD
--		Modified£º2011/08
--		Author£ººú±óÌÎ
--		TaskName£º¡¾-5-¡¿
--		TaskID£º
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		PlayerID=AI:GetEctypeVarInteger(mapid,110)
		Distance=AI:GetPlayerDistance(PlayerID)
--AI:Say("Distance = "..tostring(Distance))
		if Distance < 3 then
			mode3=AI:GetEctypeVarShort(mapid,11)
			dead=AI:GetEctypeVarShort(mapid,12)
			if mode3 == 2 then
				if dead < 3 then
					AI:SetEctypeVarShort(mapid,11,3)
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					level=AI:GetEctypeVarShort(mapid,0)
					AI:SummonLevelMonsterByPos(52361,214,level,PosX,PosY)
					AI:Exit()
				end
			end
		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end


	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


	end