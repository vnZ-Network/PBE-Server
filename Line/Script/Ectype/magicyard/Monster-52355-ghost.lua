----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2011/08
--		Author：胡斌涛
--		TaskName：【-通用AI请双击我改名-】
--		TaskID：
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
	
--		if nIndex == 1 then
--			a=AI:GetArray(1)
--			if a == 1 then
--				
--			AI:SetArray(1,a)
--		end

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

-- 			a = AI:GetArray(1)
--			if a == 0 then --初始触发器，开场动作，出生动画
--				AI:SetTimer(1,500,1)
--				AI:SetArray(1,1)
--
--
--			end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end


	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
			AI:AddSeekPos(mapid,xx,yy)
		end

	end