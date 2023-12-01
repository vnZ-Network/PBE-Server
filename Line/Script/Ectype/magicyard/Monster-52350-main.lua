----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-?????AI-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	
		if nIndex == 1 then
			light_count=AI:GetEctypeVarShort(mapid,6)
			maxcount=AI:GetEctypeVarShort(mapid,9)
			if light_count > 0 then
				if light_count < maxcount then
					PlayerID=AI:GetEctypeVarInteger(mapid,110)
					player_posx=AI:GetPlayerX(PlayerID)
					player_posy=AI:GetPlayerY(PlayerID)
					randoom=math.random(0,100)
					oa=4*randoom*2/100
					rr=8
					SummX=player_posx+rr*math.sin(oa)
					SummY=player_posy+rr*math.cos(oa)
					AI:SummonMonsterByPos(52355,SummX,SummY,0)
					a=0
				end
			end
		end

		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 1 then --?????
				temp=0
				while temp<6 do
					temp=temp+0.5
					oa=math.pi*temp/6*2
					temp=temp+0.5
					rr=9
					oriX,oriY=133,150
					SummX=oriX+rr*math.sin(oa)
					SummY=oriY+rr*math.cos(oa)
					monID=52363+temp-1
					level=AI:GetEctypeVarShort(mapid,0)
					if temp < 4 then
						Dir=(5-temp)
					else
						Dir=(12-temp)
					end
					AI:SummonMonsterByPos(monID,SummX,SummY,Dir)
					AI:ScreenText("Challenge for one of 3 bosses to pass this test.",2)
				end
			end
		end



	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		-----------------------------------------------------------normal start
			task_status=AI:GetEctypeVarShort(mapid,1)
			if task_status == 2 then
				AI:ScreenText("Mission completed, find Satha to receive reward.",2)
			end
--			if task_status == 3 then
--				AI:ScreenText("GUID:04428000002",2)
--			end
			----------------------------------------------------mode-1
			loop=AI:GetEctypeVarShort(mapid,4)
			if loop > 0 then
				if loop < 4 then
				all=AI:GetEctypeVarShort(mapid,2)
				kill=AI:GetEctypeVarShort(mapid,3)
				AI:SetEctypeVarShort(mapid,3,kill)
				AI:ScreenText("Round "..tostring(loop)..": Ignited Scorching Soldiers killed: "..tostring(kill).." / "..tostring(all),2)
				end
			end
			----------------------------------------------------mode-2
			light_count=AI:GetEctypeVarShort(mapid,6)
			maxcount=AI:GetEctypeVarShort(mapid,9)
			if light_count > 0 then
				a = AI:GetArray(1)
				if a == 0 then --?????
					AI:SetTimer(1,2500,9999)
					AI:SetArray(1,1)
				end
				if light_count < maxcount then
					PlayerID=AI:GetEctypeVarInteger(mapid,110)
					player_posx=AI:GetPlayerX(PlayerID)
					player_posy=AI:GetPlayerY(PlayerID)
					monsterpos_x=AI:GetEctypeVarShort(mapid,7)
					monsterpos_y=AI:GetEctypeVarShort(mapid,8)
					atanAB=math.atan2(monsterpos_y-player_posy,monsterpos_x-player_posx)
					res=(atanAB/math.pi+1)*8
					if res < 1 then
						res=res+15
					else
						res=res-1
					end
					res=math.floor(res/2)
					if res == 0 then
						text="?"
					end
					if res == 1 then
						text="Up"
					end
					if res == 2 then
						text="?"
					end
					if res == 3 then
						text="Right"
					end
					if res == 4 then
						text="?"
					end
					if res == 5 then
						text="Down"
					end
					if res == 6 then
						text="?"
					end
					if res == 7 then
						text="Left"
					end
					AI:ScreenText("Sacred Beams collected: "..tostring(light_count-1).." / "..tostring(maxcount-1).." Next location: "..text.." ]",2)
				end
			end
			----------------------------------------------------mode-3
			mode3=AI:GetEctypeVarShort(mapid,11)
			if mode3 > 0 then
				if mode3 == 1 then
					a = AI:GetArray(2)
					if a == 0 then --?????
						AI:ScreenText("Academy machine will appear.",2)
						AI:SetTimer(2,3000,1)
						AI:SetArray(2,1)
						AI:SetEctypeVarShort(mapid,11,2)
					end
				end
			end
			---------------------------------------------------test
--			status=AI:GetEctypeVarShort(mapid,99)
--			if status == 1 then
--				AI:ScreenText("GUID:04428000012",2)
--				AI:SetEctypeVarShort(mapid,99,0)
--				temp=0
--				temp=0
--				temp=0
--				while temp<6 do
--					temp=temp+0.5
--					oa=math.pi*temp/6*2
--					temp=temp+0.5
--					rr=9
--					oriX,oriY=133,150
--					SummX=oriX+rr*math.sin(oa)
--					SummY=oriY+rr*math.cos(oa)
--					monID=52363+temp-1
--					level=AI:GetEctypeVarShort(mapid,0)
--					if temp < 4 then
--						Dir=(5-temp)
--					else
--						Dir=(12-temp)
--					end
--					AI:SummonMonsterByPos(monID,SummX,SummY,Dir)
--					AI:ScreenText("Challenge for one of 3 bosses to pass this test.",2)
--				end
--			end
		------------------------------------------------------------normal end
	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		--AI:ScreenText("",2)
		AI:DelTimer(1)

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


	end