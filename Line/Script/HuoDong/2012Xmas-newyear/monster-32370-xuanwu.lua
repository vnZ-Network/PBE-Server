----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:Say("I am Obsidian Turtle!")
				AI:UpdateSeekPath(1)
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then
				randombuff=math.random(1,2)
				if randombuff == 1 then
					randombuff=math.random(1,8)
					AI:AddSkill(2528,randombuff)
					AI:UseSkill(2528,randombuff)
--					print("GUID:04846000001"..randombuff)
--					AI:Say("GUID:04846000002"..randombuff)
					sayshit_A(AI,randombuff)
				else
					randombuff=math.random(1,8)
					AI:AddSkill(2529,randombuff)
					AI:UseSkill(2529,randombuff)
--					print("GUID:04846000003"..randombuff)
--					AI:Say("GUID:04846000004"..randombuff)
					sayshit_B(AI,randombuff)
				end
			end
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
			end
			a = AI:GetArray(2)
			if a == 0 then
				randomtime=math.random(1750,3250)
				AI:SetTimer(2,randomtime,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 186) and ( PosY == 138 )) then
			isover=AI:GetServerValue(299)
			if isover == 1 then
				AI:SetServerValue(299,6)
				AI:Say("Obsidian Turtle has made it to the tape first! He's the champion!")
				AI:ScreenText("Obsidian Turtle - Fleet-Footed is the champion of this New Year's Race!",2)
			else
				AI:Say("Obsidian Turtle has crossed the final line!")
			end
			AI:DelTimer(1)
			AI:DelTimer(2)
			AI:SelfMurder()
			AI:Exit()
		end

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--144
--142
--140
--138
--127-186
		if nIndex == 1 then
			xx,yy=186,138
			AI:AddSeekPos(mapid,xx,yy)
		end

	end
	
	
	function sayshit_A(AI,randombuff)
		
		issay=math.random(1,2)
		if issay == 1 then
			if randombuff >= 1 and randombuff <= 3 then
				AI:Say("The championship will be mine!")
			end
			if randombuff >= 4 and randombuff <= 6 then
				AI:Say("Use the Rocket-propelled skill!")
			end
			if randombuff >= 7 and randombuff <= 8 then
				AI:Say("Hahaha!")
			end
		end
		
	end
	
	
	function sayshit_B(AI,randombuff)
		
		issay=math.random(1,2)
		if issay == 1 then
			if randombuff >= 1 and randombuff <= 3 then
				AI:Say("Charging...")
			end
			if randombuff >= 4 and randombuff <= 6 then
				AI:Say("Skill in cooldown.")
			end
			if randombuff >= 7 and randombuff <= 8 then
				AI:Say("Mana is out of use!")
			end
		end
		
	end