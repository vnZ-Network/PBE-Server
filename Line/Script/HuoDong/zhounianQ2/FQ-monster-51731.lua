----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2010/11/11
--		Author:???
--		Class:	.Lua
--		AIName:monster-51242.lua
--		Remark:???
----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:ScreenText("Remaining time: 15 sec.",2)
				AI:SetArray(1,2)
			end
			if a == 2 then
				AI:ScreenText("Remaining time: 10 sec.",2)
				AI:SetArray(1,3)
			end
			if a == 3 then
				AI:ScreenText("Remaining time: 5 sec.",2)
				AI:SetArray(1,4)
			end
			if a == 4 then
				AI:ScreenText("You passed the Trial of Flame! Use the Scarlet Phoenix Core to get a Scarlet Phoenix Feather.",2)
				AI:SetEctypeVarShort(mapid, 1, 20)
				--AI:SetArray(3,5)
				AI:Exit()
			end
		end
		
		if nIndex == 2 then
			AI:Exit()
		end		
		
		
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		playerID = AI:GetEctypeVarInteger(mapid, 110)
		nHP = AI:GetPlayerHP(playerID)
		mHP = AI:GetPlayerHPMax(playerID)
		hppct = nHP/mHP*1000
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:ScreenText("The Trial of Flame has begun!",2)
			AI:SetTimer(1,5000,4)
			AI:SetArray(1,1)
			--AI:FlyPlayertoMap(playerID, mapid, 39, 63)
			--AI:FlyToMap(playerID, mapid, 102, 162, False)
			--x = AI:GetPosX()
			--y = AI:GetPosY()
			--AI:FlyToMap(playerID, mapid, x, y, false )
			--AI:SetTimer(1,100,1)
			--AI:SetArray(3,1)
		end


--hp??,?????
		a = AI:GetArray(2)
		if a == 0 then
			if hppct < 200 then
				AI:ScreenText("What a pity, you didn't pass the Trial of Flame. Click on the Scarlet Phoenix Core to return to Atlantis.",2)
				AI:SetEctypeVarShort(mapid, 1, 25)
				AI:SetTimer(2,500,1)
				AI:SetArray(2,1)
			end
		end

		
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
	end
	
