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
				--AI:ScreenText("GUID:05301000000",2)
				AI:SetArray(1,2)
			end
		end
		
		if nIndex == 2 then
			--???
			rand = AI:GetRand(100)
			AI:AddSkill(2106, 1)
			AI:UseSkill(2106, 1)
			
			if rand < 20 then
				AI:Say("All is death.")
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
			AI:SetTimer(2,2500,99)
			AI:SetArray(2,1)
		end
		
--hp??,?????
		a = AI:GetArray(3)
		if a == 0 then
			if hppct < 333 then
				AI:ScreenText("What a pity, you didn't pass the Trial of Ice. Click on the White Tiger Core to return to Atlantis.",2)
				AI:SetEctypeVarShort(mapid, 1, 25)
				AI:SetTimer(3,500,1)
				AI:SetArray(3,1)
			end
		end
		
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		--AI:SetEctypeVarShort(mapid, 1, 20)
		a = AI:GetEctypeVarShort(mapid, 2)
		a = a + 1
		AI:SetEctypeVarShort(mapid, 2, a)
		randx = AI:GetRand(100)
		
		if a > 45 then
			AI:ScreenText("The guide Farina has appeared.",2)
			AI:AddNPC(991)
		else
			--AI:ScreenText("GUID:05301000004"..tostring(a),2)
			PosX = AI:GetPosX()
			PosY = AI:GetPosY()
			randr = AI:GetRand(10)
			PosX = PosX-5+randr
			PosY = PosY-5+randr
			AI:ScreenText("Monster continue to appear!",2)
			if randx < 33 then
				AI:SummonMonsterByPos(51742, PosX, PosY)
			else
				if randx < 66 then
					AI:SummonMonsterByPos(51743, PosX, PosY)
				else
					AI:SummonMonsterByPos(51744, PosX, PosY)
				end
			end
		end
		
	end
	
