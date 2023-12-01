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
				AI:ScreenText("I have been waiting 500 years for someone to break this curse!",2)
				AI:SetArray(1,2)
			end
		end
		
		if nIndex == 2 then
			--???
			rand = AI:GetRand(100)
			if rand < 33 then
				AI:AddSkill(2099, 1)
				AI:UseSkill(2099, 1)
				AI:Say("Freeze!")
			else
				AI:ScreenText("It drains my own life force to be summoned!",2)
			end
			--???
			mhp = AI:GetHPMax()
--AI:Say( "mhp="..tostring(mhp))
			uhp = mhp / 50
--AI:Say( "uhp="..tostring(mhp))
			AI:LoseHPInstant(uhp)
			--????
			mapx = AI:GetPosX()
			mapy = AI:GetPosY()
			AI:SummonMonsterByPos(51738, mapx, mapy)
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
			if hppct < 50 then
				AI:ScreenText("What a pity, you didn't pass the Trial of Ice. Click on the Emerald Dragon Core to return to Atlantis.",2)
				AI:SetEctypeVarShort(mapid, 1, 25)
				AI:SetTimer(3,500,1)
				AI:SetArray(3,1)
			end
		end
		
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		playerID = AI:GetEctypeVarInteger(mapid, 110)
		
		AI:ScreenText("Thank you. My power shall become immortal, and I will give you my strength.",2)		
		AI:SetEctypeVarShort(mapid, 1, 20)
		
	end
	
