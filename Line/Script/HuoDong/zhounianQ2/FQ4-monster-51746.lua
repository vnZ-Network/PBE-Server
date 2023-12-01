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
		playerID = AI:GetEctypeVarInteger(mapid, 110)
		
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:ScreenText("Why are you here? You are disturbing the peace of this realm!",2)
				AI:SetArray(1,2)
			end
		end
		
		if nIndex == 2 then
			--???
			rand = AI:GetRand(100)
			if rand < 48 then
				AI:AddSkill(2109, 1)
				AI:UseSkill(2109, 1)
				AI:ScreenText("Earthquake!",2)
			else
				if rand < 96 then
					--???
					PosX = AI:GetPosX()
					PosY = AI:GetPosY()
					PosX = PosX+2
					PosY = PosY+4
					AI:SummonMonsterByPos(51748, PosX, PosY)
					PosX = PosX+2
					PosY = PosY-2
					AI:SummonMonsterByPos(51748, PosX, PosY)
					PosY = PosY-4
					AI:SummonMonsterByPos(51748, PosX, PosY)
					PosX = PosX-2
					PosY = PosY-2
					AI:SummonMonsterByPos(51748, PosX, PosY)
					PosX = PosX-4
					AI:SummonMonsterByPos(51748, PosX, PosY)
					PosX = PosX-2
					PosY = PosY+2
					AI:SummonMonsterByPos(51748, PosX, PosY)
					PosY = PosY+4
					AI:SummonMonsterByPos(51748, PosX, PosY)
					PosX = PosX+2
					PosY = PosY+2
					AI:SummonMonsterByPos(51748, PosX, PosY)
					AI:ScreenText("You've already lost!",2)
				else
					--????
					x = AI:GetPosX()
					y = AI:GetPosY()
					AI:FlyToMap(playerID, mapid, x, y)
					AI:ScreenText("It's useless to run!",2)
				end
			end
			

		end		
		
		if nIndex == 3 then
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
			AI:SetTimer(1,2500,1)
			AI:SetArray(1,1)
		end
		
		a = AI:GetArray(2)
		if a == 0 then
			AI:SetTimer(2,6000,99)
			AI:SetArray(2,1)
		end
		
--hp??,?????
		a = AI:GetArray(3)
		if a == 0 then
			if hppct < 175 then
				AI:ScreenText("What a pity, you didn't pass the Trial of the Void. Click the Obsidian Turtle Core to return to Atlantis.",2)
				AI:SetEctypeVarShort(mapid, 1, 25)
				AI:SetTimer(3,500,1)
				AI:SetArray(3,1)
			end
		end
		
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:ScreenText("No... That's impossible!",2)		
		AI:SetEctypeVarShort(mapid, 1, 20)
		
	end
	
