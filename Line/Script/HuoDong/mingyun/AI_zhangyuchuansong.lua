	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/08/09
	--		Author:???
	--		Class: Lua
	--		AIName:AI_longdichuansong01.lua
	--		Backup:?????
	--****************************************
--30???,??25?,600/25=24,24*30/60=12??,720?

	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
--------------??????-------------------------------------------------
    if nIndex == 1 then
    	time = AI:GetArray(1)
    	time = time + 1
	    AI:SetArray(1,time)

    	if time == 24 then
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(11973,posx,posy)
				AI:ScreenText("The Overlord Octopus shows its true form.",2)
				AI:DelTimer(1)
				AI:DelTimer(9)
    	end

    	if time < 24 then
	    	area = AI:GetArray(2)
	    	area = area + 1
	    	if area == 5 then
	    		area = 1
	    	end
	    	AI:SetArray(2,area)
	    	addmonsterbyarea(nAI,area)
				AI:ScreenText("The legion of the Overlord Octopus has invaded the Great Abyss!!!",2)
				AI:SetArray(9,30)
				AI:SetTimer(9,5000,10)
    	end

		end
---------------------------------------------------------------------------
		if nIndex == 9 then
			timeleft = AI:GetArray(9)
    	time9 = AI:GetArray(1)
    	time9 = time9 + 1
			if timeleft > 5 then
				timeleft = timeleft - 5
				AI:SetArray(9,timeleft)
				if timeleft < 5 then
					AI:DelTimer(9)
				end
				msg = "The "..time9.." wave of Overlord Octopus' legion:"..timeleft.."sec. "
				AI:ScreenText(msg,2)
			end
		end

	end
---------------------------------------------------------------------------
    function Event_Thinking(nAI)
      local AI = GetMonsterAI(nAI)
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			shift = 12
      a = AI:GetArray(1)
      if a == 0 then
      	AI:SummonMonsterByPos(11976,posx+shift,posy)
      	AI:SummonMonsterByPos(11976,posx-shift,posy)
      	AI:SummonMonsterByPos(11976,posx,posy+shift)
      	AI:SummonMonsterByPos(11976,posx,posy-shift)
				addmonsterbyarea(nAI,1)
				AI:ScreenText("The legion of the Overlord Octopus has invaded the Great Abyss!!!",2)
				AI:SetArray(1,1)
				AI:SetArray(2,1)
				AI:SetArray(9,30)
				AI:SetTimer(1,30000,25)
				AI:SetTimer(9,5000,10)
      end
    end
---------------------------------------------------------------------------
		function addmonsterbyarea(nAI,area)
      local AI = GetMonsterAI(nAI)
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			shift = 12
			MonsterID = 11974
			if area == 1 then
				posx = posx + shift
			end
			if area == 2 then
				posy = posy + shift
			end
			if area == 3 then
				posx = posx - shift
			end
			if area == 4 then
				posy = posy - shift
			end
--			posx,posy=posx-2,posy-2
--			for indexX=0,4 do
--				for indexY=0,4 do
--					AI:SummonMonsterByPos(MonsterID,posx+indexX,posy+indexY)
--				end
--			end

				a=0
				rr=1.2
				randomdir = math.random(0,20)
				for a=1,25 do	
					oa=6.28*(a/20+randomdir/10)
					sx=posx+rr*math.sin(oa)
					sy=posy+rr*math.cos(oa)
					AI:SummonMonsterByPos(MonsterID,sx,sy)
					rr=rr+0.24
				end


		end